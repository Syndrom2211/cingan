<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Portfolio Details - FlexStart Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{!! asset('template') !!}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css" />
  <!-- Template Main CSS File -->
  <link href="{!! asset('template') !!}/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: FlexStart - v1.0.0
  * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="" class="logo d-flex align-items-center">
        <img src="{!! asset('template') !!}/assets/img/logo.png" alt="">
        <span>Telkom</span>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="/admin_warehouse">Notifikasi</a></li>
          <li><a class="nav-link scrollto " href="/lihat_data_po">Lihat Data PO</a></li>
          <li><a class="nav-link scrollto" href="/logout">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

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

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="{!! asset('template') !!}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/aos/aos.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/php-email-form/validate.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/purecounter/purecounter.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
  <!-- Template Main JS File -->
  <script src="{!! asset('template') !!}/assets/js/main.js"></script>

  <script>
    $(document).ready(function() {
        var table = $('#example').DataTable({
            columnDefs: [{
                orderable: false,
                targets: [1,2,3]
            }]
        });
    
        $('button').click( function() {
            var data = table.$('input, select').serialize();
            alert(
                "The following data would have been submitted to the server: \n\n"+
                data.substr( 0, 120 )+'...'
            );
            return false;
        } );
    } );
    </script>
</body>

</html>