@extends('layouts.atas')
@if (Auth::user()->level == 'warehouse')
  @section('content')

    <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <section class="breadcrumbs">
        <div class="container">
          <ol>
            <li>Notifikasi PO Terbaru</li>
          </ol>
          <h2>Notifikasi PO Terbaru</h2>

        </div>
      </section><!-- End Breadcrumbs -->

      <!-- ======= Portfolio Details Section ======= -->
      <section id="portfolio-details" class="portfolio-details">
        <div class="container">

          <div class="row gy-12">

            <div class="col-lg-12">
            @foreach($data as $datanya)
              @if ($datanya->status_notifikasi === "sudah_dilihat")
                      <!--KOSONG-->
              @elseif ($datanya->status_notifikasi === "belum_dilihat")                    
                      <div class="card">
                          <div class="card-header">
                              Notifikasi - ID Procurement: <b>{{ $datanya->id_procurement }}</b>
                          </div>
                          <div class="card-body">
                              <h5 class="card-title">{{ $datanya->id_procurement }}</h5>
                              <p class="card-text">Diajukan pada : {{ $datanya->created_at }}</p>
                              
                              <form action="/proses_ubah_notifikasi_pro" method="POST">
                              {{ csrf_field() }}
                                  <input type="hidden" name="id_notifikasi_pro" value="{{ $datanya->id_notifikasi_pro }}" />
                                  <input type="hidden" name="id_procurement" value="{{ $datanya->id_procurement }}" />
                                  <input type="hidden" name="status_notifikasi" value="sudah_dilihat" />
                                  <input type="submit" class="btn btn-primary" name="ok" value="Lihat Data" />
                              </form>
                          </div>
                      </div>                    
              @else
                  I don't have any records!
              @endif    
            @endforeach        
            </div>

          </div>

        </div>
      </section><!-- End Portfolio Details Section -->

    </main><!-- End #main -->
  @endsection
@else
  <script>
    window.location.assign("/redirect_page");
  </script>
@endif