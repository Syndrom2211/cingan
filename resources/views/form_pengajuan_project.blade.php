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
          <li><a class="nav-link scrollto " href="/form_pengajuan_project">Inventory</a></li>
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
        <h2><i>--Halaman Admin Kontruksi</i></h2>
        <ol>
          <li>Form Pengajuan Project</li>
        </ol>
        <h2>Form Pengajuan Project</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-12">

          <div class="col-lg-12">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form action="/proses_pengajuan_project" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="form-group">
                  <label for="exampleInputEmail1">File NDE</label>
                  <input type="file" name="file_nde" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">File MOM</label>
                  <input type="file" name="file_mom" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">File BOQ</label>
                    <input type="file" name="file_boq" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">ID Proactive</label>
                    <input type="text" name="id_proactive" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">ID SAP</label>
                    <input type="text" name="id_sap" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Lokasi</label>
                    <input type="text" name="nama_lokasi" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Pilih Designator:</label>
                    <table id="example" class="table" style="width:100%">
                        <thead>
                            <tr>
                                <th>Pilih</th>
                                <th>No</th>
                                <th>Designator</th>
                                <th>Uraian Pekerjaan</th>
                                <th>Satuan</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $datanya)
                                <tr>
                                    <td><input type="checkbox" id="row-2-age" name="pilih_material[]" value="{{ $datanya->id }}"></td>
                                    <td>{{ $datanya->id }}</td>
                                    <td>{{ $datanya->designator }}</td>
                                    <td>{{ $datanya->uraian_pekerjaan }}</td>
                                    <td>{{ $datanya->satuan }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <input type="submit" class="btn btn-primary" name="ok" value="Kirim" />
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

