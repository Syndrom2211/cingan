@extends('layouts.atas')
@section('content')

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <h2><i>--Halaman Admin Kontruksi</i></h2>
        <ol>
          <li>Masukan Jumlah Lokasi</li>
        </ol>
        <h2>Masukan Jumlah Lokasi</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-12">

          <div class="col-lg-12">
            <form action="/form_pengajuan_project" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                Masukan jumlah lokasi:
                <input type="text" name="jumlah_lokasi" placeholder="Maksimal jumlah lokasi = 30 lokasi" maxlength="2" />
                <input type="submit" class="btn btn-primary" name="jumlah_submit" value="Submit" />
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->
@endsection