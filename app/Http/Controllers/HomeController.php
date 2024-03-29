<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ListProduk;
use App\PengajuanProject;
use App\RincianPengajuan;
use App\OpsiMaterial;
use App\TransaksiAkhir;
use App\NotifikasiKontruksi;
use App\Procurement;
use App\NotifikasiProcurement;
use App\HistoryPengambilan;
use App\StokGudang;
use DB;
use Auth;

class HomeController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    //
    public function form_pengajuan_project(Request $request){
        #$hasil = ListProduk::all();
        $hasil = DB::table('list_produk')
                ->select('list_produk.*')
                ->get();
        $hasil2 = $request->jumlah_lokasi;

        #return view('form_pengajuan_project', ['data'=>$hasil]);
        return view('form_pengajuan_project', compact(['hasil','hasil2']));
    }

    public function proses_pengajuan_project(Request $request){
        #$hasilnya               = $request->all();
        #return view('proses_pengajuan_project', ['datadua' => $hasilnya]);

        $this->validate($request, [
            'file' => 'mimes:pdf|max:10000',
            'file' => 'mimetypes:application/pdf|max:10000',
        ]);

        //TAMBAH KE PENGAJUAN             
        for($i=0;$i<=count($request->nama_lokasi)-1;$i++){
            $tambah_pengajuan = new PengajuanProject;   
            $tambah_pengajuan->id_proactive    = $request->id_proactive[$i];
            $tambah_pengajuan->id_pengajuan    = $request->id_pengajuan;
            $tambah_pengajuan->id_sap          = $request->id_sap[$i];
            $tambah_pengajuan->nama_lokasi     = $request->nama_lokasi[$i];
            $tambah_pengajuan->file_nde        = $request->file_nde;
            $tambah_pengajuan->file_mom        = $request->file_mom;
            $tambah_pengajuan->file_boq        = $request->file_boq;
            $tambah_pengajuan->save();
        }

        //TAMBAH KE RINCIAN PENGAJUAN
        for($i=0;$i<=count($request->pilih_material)-1;$i++){
            $tambah_rincianpengajuan = new RincianPengajuan;
            $tambah_rincianpengajuan->id_pengajuan    = $request->id_pengajuan;
            $tambah_rincianpengajuan->id              = $request->pilih_material[$i];
            $tambah_rincianpengajuan->save();
        }

        //TAMBAH KE NOTIFIKASI KONTRUKSI
        $tambah_notifikasi = new NotifikasiKontruksi;
        $tambah_notifikasi->id_pengajuan    = $request->id_pengajuan;
        $tambah_notifikasi->status_notifikasi    = "belum_dilihat";
        $tambah_notifikasi->save();

        return redirect('/opsi_material/'.$request->id_pengajuan);
    }

    public function opsi_material($id_pengajuan){
        #$hasil = RincianPengajuan::all();
        $hasil = DB::table('rincian_pengajuan')
                ->join('list_produk', 'list_produk.id', '=', 'rincian_pengajuan.id')
                #->join('pengajuan_project', 'pengajuan_project.id_pengajuan', '=', 'rincian_pengajuan.id_pengajuan')
                ->select('rincian_pengajuan.*', 'list_produk.*')
                #->select('rincian_pengajuan.*', 'list_produk.*', 'pengajuan_project.*')
                ->where('rincian_pengajuan.id_pengajuan', '=', $id_pengajuan)
                #->distinct()
                ->get();

        return view('opsi_material', ['data'=>$hasil]);
    }

    public function hasil_akhir_pengajuan(Request $request){
        for($i=0;$i<=count($request->id_rincian)-1;$i++){
            $tambah_rincianpengajuan                    = new OpsiMaterial;
            $tambah_rincianpengajuan->id_rincian        = $request->id_rincian[$i];
            $tambah_rincianpengajuan->harga_material    = $request->harga_material[$i];
            $tambah_rincianpengajuan->harga_jasa        = $request->harga_jasa[$i];
            $tambah_rincianpengajuan->kuantitas         = $request->kuantitas[$i];
            $tambah_rincianpengajuan->save();

            //SAVE KE HISTORY PENGAMBILAN
            $tambah_history = new HistoryPengambilan;
            $tambah_history->id_rincian = $request->id_rincian[$i];
            $tambah_history->sisa_material = $request->kuantitas[$i];
            $tambah_history->save();
        }

        $hasil = DB::table('list_produk')
                ->join('rincian_pengajuan', 'list_produk.id', '=', 'rincian_pengajuan.id')
                ->join('opsi_material', 'rincian_pengajuan.id_rincian', '=', 'opsi_material.id_rincian')
                ->select('list_produk.*', 'rincian_pengajuan.*', 'opsi_material.*')
                ->where('rincian_pengajuan.id_pengajuan', '=', $request->id_pengajuan)
                ->get();
        $hasil2 = DB::table('pengajuan_project')
                ->select('pengajuan_project.*')
                ->where('pengajuan_project.id_pengajuan', '=', $request->id_pengajuan)
                ->get();

        return view('hasil_akhir_pengajuan', compact(['hasil','hasil2']));
    }

    public function selesai_pengajuan(Request $request){
        $tambah_pengajuan = new TransaksiAkhir;
        $tambah_pengajuan->id_pengajuan               = $request->id_pengajuan;
        $tambah_pengajuan->total_harga_material     = $request->total_harga_material;
        $tambah_pengajuan->total_harga_jasa         = $request->total_harga_jasa;
        $tambah_pengajuan->total_sebelum_ppn        = $request->total_sebelum_ppn;
        $tambah_pengajuan->ppn                      = $request->ppn;
        $tambah_pengajuan->total_setelah_ppn        = $request->total_setelah_ppn;
        $tambah_pengajuan->save();

        return redirect('/redirect_page');
    }

    #ADMIN PROCUREMEN====================================
    public function admin_procurement(){
        $hasil = NotifikasiKontruksi::latest()->get();
        return view('admin_procurement', ['data'=>$hasil]);
    }

    public function proses_ubah_notifikasi_k(Request $request){
        $edit = new NotifikasiKontruksi;
        $edit->id_pengajuan               = $request->id_pengajuan;
        $edit->status_notifikasi          = $request->status_notifikasi;
        
        // update data proposal
        DB::table('notifikasi_kontruksi')->where('id_notifikasi_k',$request->id_notifikasi_k)->update([
            'id_pengajuan' => $edit->id_pengajuan,
            'status_notifikasi' => $edit->status_notifikasi
        ]);
        
        // alihkan halaman ke halaman proposal
        return redirect('/lihat_data_pengajuan/'.$edit->id_pengajuan);
    }

    public function lihat_data_pengajuan($id_pengajuan){
        $hasil = DB::table('pengajuan_project')
                ->select('pengajuan_project.*')
                ->where('id_pengajuan', '=', $id_pengajuan)
                ->get();

            return view('lihat_data_pengajuan', ['liat'=>$hasil]);
    }

    public function lihat_data_pengajuan_all(){
        $hasil = PengajuanProject::all();
        return view('lihat_data_pengajuan_all', ['data'=>$hasil]);
    }

    public function update_pengajuan($id_proactive){
        $hasil = DB::table('pengajuan_project')
                ->select('pengajuan_project.*')
                ->where('id_proactive', '=', $id_proactive)
                ->get();

        return view('/update_pengajuan', ['liat'=>$hasil]);
    }

    public function proses_update_pengajuan(Request $request){
        //TAMBAH KE PROCUREMENT
        $tambah_procurement = new Procurement;
        $tambah_procurement->id_procurement    = $request->id_procurement;
        $tambah_procurement->id_proactive      = $request->id_proactive;
        $tambah_procurement->id_pengajuan      = $request->id_pengajuan;
        $tambah_procurement->id_po             = $request->id_po;
        $tambah_procurement->save();

        //TAMBAH KE NOTIFIKASI PROCUREMENT
        $tambah_notifikasi = new NotifikasiProcurement;
        $tambah_notifikasi->id_procurement    = $request->id_procurement;
        $tambah_notifikasi->status_notifikasi    = "belum_dilihat";
        $tambah_notifikasi->save();

        return redirect('/lihat_data_pengajuan');
    }
    #ADMIN PROCUREMEN====================================

    #ADMIN WAREHOUSE====================================
    public function admin_warehouse(){
        $hasil = NotifikasiProcurement::latest()->get();
        return view('admin_warehouse', ['data'=>$hasil]);
    }

    public function proses_ubah_notifikasi_pro(Request $request){
        $edit = new NotifikasiProcurement;
        $edit->id_procurement             = $request->id_procurement;
        $edit->status_notifikasi          = $request->status_notifikasi;
        
        // update data proposal
        DB::table('notifikasi_procurement')->where('id_notifikasi_pro',$request->id_notifikasi_pro)->update([
            'id_procurement' => $edit->id_procurement,
            'status_notifikasi' => $edit->status_notifikasi
        ]);
        
        // alihkan halaman ke halaman proposal
        return redirect('/lihat_data_po/'.$edit->id_procurement);
    }

    public function lihat_data_po($id_procurement){
        $hasil = DB::table('procurement')
                ->select('procurement.*')
                ->where('id_procurement', '=', $id_procurement)
                ->get();

            return view('lihat_data_po', ['liat'=>$hasil]);
    }

    public function lihat_data_po_all(){
        $hasil = Procurement::all();
        return view('lihat_data_po_all', ['data'=>$hasil]);
    }

    public function data_pengajuan($id_procurement){
        $hasil = DB::table('rincian_pengajuan')
                ->join('procurement', 'rincian_pengajuan.id_pengajuan', '=', 'procurement.id_pengajuan')
                ->join('pengajuan_project', 'rincian_pengajuan.id_pengajuan', '=', 'pengajuan_project.id_pengajuan')
                ->join('opsi_material', 'rincian_pengajuan.id_rincian', '=', 'opsi_material.id_rincian')
                ->join('list_produk', 'rincian_pengajuan.id', '=', 'list_produk.id')
                ->join('history_pengambilan', 'rincian_pengajuan.id_rincian', '=', 'history_pengambilan.id_rincian')
                ->select('pengajuan_project.*', 'procurement.*', 'rincian_pengajuan.*', 'opsi_material.*', 'list_produk.*', 'history_pengambilan.*')
                ->where('procurement.id_procurement', '=', $id_procurement)
                ->get();

        return view('data_pengajuan', ['data'=>$hasil]);
    }

    public function update_history_pengajuan(Request $request){
        $edit = new HistoryPengambilan;
        $edit->sisa_material_awal          = $request->sisa_material_awal;
        $edit->pengambilan_material          = $request->pengambilan_material;

        //hitung
        $sisa = (($edit->sisa_material_awal) - ($edit->pengambilan_material));

        // update history pengajuan
        DB::table('history_pengambilan')->where('id_history_pengambilan',$request->id_history_pengambilan)->update([
            'sisa_material' => $sisa
        ]);
        
        // alihkan halaman ke halaman proposal
        return redirect('/data_pengajuan/'.$request->id_procurement);
    }
    #ADMIN WAREHOUSE====================================

    public function stok_gudang(){
        $hasil = StokGudang::all();
        return view('stok_gudang', ['data'=>$hasil]);
    }

    #public function jumlah_lokasi(){
    #    return view('jumlah_lokasi');
    #}

    public function logout(){
        Auth::logout();
        return redirect('/');
    }

    public function redirect_page(){
        return view('redirect_page');
    }

    public function jumlah_lokasi(){
        return view('jumlah_lokasi');
    }
}
