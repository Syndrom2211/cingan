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
          <li><a class="nav-link scrollto " href="/form_pengajuan_project">Pengajuan Project</a></li>
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
          <li><a href="/form_pengajuan_project">Form Pengajuan Project</a></li>
          <li>Opsi Material</li>
        </ol>
        <h2>Opsi Material</h2>
      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-12">

          <div class="col-lg-12">
            <form action="/hasil_akhir_pengajuan" method="POST">
                <table class="table">
                    <tr>
                        <th>#</th>
                        <th>Designator</th>
                        <th>Uraian Pekerjaan</th>
                        <th>Opsi Material</th>
                        <th>Kuantitas</th>
                    </tr>

                    {{ csrf_field() }}  
                    
                    @foreach($data as $datanya)  
                    <input type="hidden" value="{{ $datanya->id_proactive }}" name="id_proactive" />          
                        <tr>
                            <input type="hidden" name="id_rincian[]" value="{{ $datanya->id_rincian }}" />
                            <td>{{ $datanya->id }}</td>
                            <td>{{ $datanya->designator }}</td>
                            <td>{{ $datanya->uraian_pekerjaan }}</td>
                            <td>
                                <select name="harga_material[]">
                                    <option value="0">Tidak dengan material</option>
                                    <option value="{{ $datanya->harga_material }}">Dengan Material</option>
                                </select>
                                <input type="hidden" value="{{ $datanya->harga_jasa }}" name="harga_jasa[]" />
                            </td>
                            <td>
                                <input type="text" placeholder="Masukan kuantitas" name="kuantitas[]" />
                            </td>
                        </tr>
                        @endforeach                                
                </table>   
                <input type="submit" class="btn btn-primary" value="Submit" name="submit" />
            </form>
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


