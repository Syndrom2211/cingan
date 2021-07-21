@extends('layouts.atas')
@section('content')

    <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <ol>
          <li><a href="/admin_procurement">Notifikasi Pengajuan Project Terbaru</a></li>
          <li><a href="/lihat_data_pengajuan">Lihat Data Pengajuan</a></li>
          <li>Lihat Data Pengajuan Per ID Proactive</li>
        </ol>
        <h2>Lihat Data Pengajuan Per ID Proactive</h2>

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
                        <th>Nama Lokasi</th>
                        <th>File_NDE</th>
                        <th>File_MOM</th>
                        <th>File_BOQ</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($liat as $li)
                    <tr>
                        <td>{{ $li->id_pengajuan }}</td>
                        <td>{{ $li->id_sap }}</td>
                        <td>{{ $li->nama_lokasi }}</td>
                        <td><a href="{{ $li->file_nde }}">Download File NDE</a></td>
                        <td><a href="{{ $li->file_mom }}">Download File MOM</a></td>
                        <td><a href="{{ $li->file_boq }}">Download File BOQ</a></td>
                        <td>
                        <a href="/update_pengajuan/{{ $li->id_proactive }}" class="btn btn-success">Update Data</a>
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