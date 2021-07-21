<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth/login');
});

//Form Pengajuan Project - Admin Kontruksi
Route::post('/form_pengajuan_project', 'HomeController@form_pengajuan_project')->name('form_pengajuan_project');
Route::post('/proses_pengajuan_project', 'HomeController@proses_pengajuan_project')->name('proses_pengajuan_project');
Route::get('/opsi_material/{id_pengajuan}', 'HomeController@opsi_material')->name('opsi_material');
Route::post('/hasil_akhir_pengajuan', 'HomeController@hasil_akhir_pengajuan')->name('hasil_akhir_pengajuan');
Route::post('/selesai_pengajuan', 'HomeController@selesai_pengajuan')->name('selesai_pengajuan');

#Halaman admin-------------------------
Auth::routes();
Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
#Login------------------------------------

//Data Pengajuan Project - Admin Procurement-------------------------
Route::get('/admin_procurement', 'HomeController@admin_procurement')->name('admin_procurement');
Route::post('/proses_ubah_notifikasi_k', 'HomeController@proses_ubah_notifikasi_k')->name('proses_ubah_notifikasi_k');
Route::get('/lihat_data_pengajuan/{id_pengajuan}', 'HomeController@lihat_data_pengajuan')->name('lihat_data_pengajuan');
Route::get('/lihat_data_pengajuan', 'HomeController@lihat_data_pengajuan_all')->name('lihat_data_pengajuan_all');
Route::get('/update_pengajuan/{id_pengajuan}', 'HomeController@update_pengajuan')->name('update_pengajuan');
Route::post('/proses_update_pengajuan', 'HomeController@proses_update_pengajuan')->name('proses_update_pengajuan');

//Data PR/PO - Admin Warehouse
Route::get('/admin_warehouse', 'HomeController@admin_warehouse')->name('admin_warehouse');
Route::post('/proses_ubah_notifikasi_pro', 'HomeController@proses_ubah_notifikasi_pro')->name('proses_ubah_notifikasi_pro');
Route::get('/lihat_data_po/{id_procurement}', 'HomeController@lihat_data_po')->name('lihat_data_po');
Route::get('/lihat_data_po', 'HomeController@lihat_data_po_all')->name('lihat_data_po_all');
Route::get('/data_pengajuan/{id_procurement}', 'HomeController@data_pengajuan')->name('data_pengajuan');
Route::post('/update_history_pengajuan', 'HomeController@update_history_pengajuan')->name('update_history_pengajuan');

Route::get('/stok_gudang', 'HomeController@stok_gudang')->name('stok_gudang');
Route::get('/redirect_page', 'HomeController@redirect_page')->name('redirect_page');

#Route::get('/jumlah_lokasi', 'HomeController@jumlah_lokasi')->name('jumlah_lokasi');

Route::get('/jumlah_lokasi', 'HomeController@jumlah_lokasi')->name('jumlah_lokasi');