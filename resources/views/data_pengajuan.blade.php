@extends('layouts.atas')
@section('content')

    <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <ol>
          <li><a href="/admin_warehouse">Notifikasi PO Terbaru</a></li>
          <li><a href="/lihat_data_po_all">Lihat Data PO</a></li>
          <li>Data Pengajuan</li>
        </ol>
        <h2>Data Pengajuan</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-12">

          <div class="col-lg-12">
          <table id="example" class="display nowrap" style="width:100%">
                <thead>
                    <tr>
                        <th>ID Proactive</th>
                        <th>ID SAP</th>
                        <th>ID PO</th>
                        <th>Nama Lokasi</th>
                        <th>Nama Material</th>
                        <th>Stok Gudang</th>
                        <th>Permintaan Material</th>
                        <th>Sisa Material</th>
                        <th>Pengambilan Material</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $li)
                    <tr>
                        <td>{{ $li->id_proactive }}</td>
                        <td>{{ $li->id_sap }}</td>
                        <td>{{ $li->id_po }}</td>
                        <td>{{ $li->nama_lokasi }}</td>
                        <td>{{ $li->designator }}</td>
                        <td>-</td>
                        <td>{{ $li->kuantitas }}</td>
                        <td>{{ $li->sisa_material }}</td>
                        <td>
                            <form action="/update_history_pengajuan" method="POST">
                            {{ csrf_field() }}
                                <input type="hidden" value="{{ $li->id_history_pengambilan }}" name="id_history_pengambilan" />
                                <input type="hidden" value="{{ $li->id_procurement }}" name="id_procurement" />
                                <input type="hidden" value="{{ $li->sisa_material }}" name="sisa_material_awal" />
                                <input type="text" name="pengambilan_material" />        
                                <input type="submit" class="btn btn-success" value="Simpan" />     
                            </form>               
                        </td>        
                    </tr>
                    @endforeach
                </tbody>
            </table>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->
@endsection