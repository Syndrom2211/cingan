<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>
  @foreach($hasil2 as $datanyaa)
    ID Proactive: {{ $datanyaa->id_proactive }}
    ID SAP: {{ $datanyaa->id_sap }}
    Nama Lokasi: {{ $datanyaa->nama_lokasi }}
  @endforeach
  </title>
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
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">

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
          <li><a class="nav-link scrollto" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">Logout</a></li>
                                                     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
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
          <li><a href="/opsi_material">Opsi Material</a></li>
          <li>Hasil akhir pengajuan</li>
        </ol>
        <h2>Hasil akhir pengajuan</h2>

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
                        <th>No</th>
                        <th>Designator</th>
                        <th>Uraian Pekerjaan</th>
                        <th>Satuan</th>
                        <th>Material</th>
                        <th>Jasa</th>
                        <th>Kuantitas</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $total_material = 0; 
                    $total_jasa     = 0;
                    $total_seb_ppn  = 0;
                    ?>
                    @foreach($hasil as $datanya)
                    <tr>
                    <?php
                    $id_proactive = $datanya->id_proactive;
                    ?>
                        <td>{{ $datanya->id_rincian }}</td>
                        <td>{{ $datanya->designator }}</td>
                        <td>{{ $datanya->uraian_pekerjaan }}</td>
                        <td>{{ $datanya->satuan }}</td>
                        <td><?php echo "Rp".number_format($datanya->harga_material,0,",","."); ?></td>
                        <td><?php echo "Rp".number_format($datanya->harga_jasa,0,",","."); ?></td>
                        <td>{{ $datanya->kuantitas }}</td>
                        <?php                
                        $total_material = ($datanya->harga_material*$datanya->kuantitas)+$total_material;
                        $total_jasa     = ($datanya->harga_jasa*$datanya->kuantitas)+$total_jasa;
                        ?>
                    </tr>
                    @endforeach
                    <tr>
                        <th>A. Total Harga Material :</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><?php echo "Rp".number_format($total_material,0,",","."); ?></th>
                    </tr>
                    <tr>
                        <th>B. Total Harga Jasa :</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><?php echo "Rp".number_format($total_jasa,0,",","."); ?></th>
                    </tr>
                    <tr>
                        <th>C. Sub Total:</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><?php echo "Rp".number_format($total_material+$total_jasa,0,",","."); ?></th>
                    </tr>
                    <tr>
                        <th>D. PPN (10%) :</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><?php echo "Rp".number_format((($total_material+$total_jasa)*0.1),0,",","."); ?></th>
                    </tr>
                    <tr>
                        <th>E. Grand Total</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><?php echo "Rp".number_format((($total_material+$total_jasa)+($total_material+$total_jasa)*0.1),0,",","."); ?></th>
                    </tr>
                </tbody>
            </table>

            <br><br>

            <form action="/selesai_pengajuan" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}  
                <input type="hidden" name="id_proactive" value="<?php echo $id_proactive; ?>" >
                <input type="hidden" name="total_harga_material" value="<?php echo $total_material; ?>" >
                <input type="hidden" name="total_harga_jasa" value="<?php echo $total_jasa; ?>" >
                <input type="hidden" name="total_sebelum_ppn" value="<?php echo $total_material+$total_jasa; ?>" >
                <input type="hidden" name="ppn" value="<?php echo ($total_material+$total_jasa)*0.1; ?>" >
                <input type="hidden" name="total_setelah_ppn" value="<?php echo (($total_material+$total_jasa)+($total_material+$total_jasa)*0.1); ?>" >
                <input type="submit" name="ok" class="btn btn-primary" value="Selesai" />
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

    <!-- Template Main JS File -->
    <script src="{!! asset('template') !!}/assets/js/main.js"></script>

    <!-- JAVASCRIPT -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>

    <script>
    $(document).ready(function() {
        $('#example').DataTable( {
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        } );
    } );
    </script>
</body>
</html>