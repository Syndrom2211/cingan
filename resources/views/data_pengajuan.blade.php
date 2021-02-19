<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Data Pengajuan Project</title>
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
                        <th>File_NDE</th>
                        <th>File_MOM</th>
                        <th>File_BOQ</th>
                        <th>Nama Material</th>
                        <th>Jumlah Material</th>
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
                        <td><a href="{{ $li->file_nde }}">Download File NDE</a></td>
                        <td><a href="{{ $li->file_mom }}">Download File MOM</a></td>
                        <td><a href="{{ $li->file_boq }}">Download File BOQ</a></td>
                        <td>{{ $li->designator }}</td>
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
            responsive: true,
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        } );
    } );
    </script>
</body>
</html>