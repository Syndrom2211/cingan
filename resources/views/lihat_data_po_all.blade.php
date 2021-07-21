@extends('layouts.atas')
@section('content')

    <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <ol>
          <li><a href="/admin_warehouse">Notifikasi PO Terbaru</a></li>
          <li>Lihat Data PO</li>
        </ol>
        <h2>Lihat Data PO</h2>

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
                        <th>ID Procurement</th>
                        <th>ID Proactive</th>
                        <th>ID PO</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $li)
                    <tr>
                        <td>{{ $li->id_procurement }}</td>
                        <td>{{ $li->id_proactive }}</td>
                        <td>{{ $li->id_po }}</td>
                        <td>
                            <a href="/data_pengajuan/{{ $li->id_procurement }}" class="btn btn-success">Data Pengajuan</a>
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