<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>PROVIS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts | harus online biar ga ribet-->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{!! asset('template') !!}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/css/jquery.dataTables.min.css" rel="stylesheet">
  <link href="{!! asset('template') !!}/assets/css/buttons.dataTables.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="{!! asset('template') !!}/assets/css/style.css" rel="stylesheet">

  <!-- Untuk form login -->
  <style type="text/css">
  /* Full-width input fields */
    input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    }

    button:hover {
    opacity: 0.8;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
    }

    img.avatar {
    width: 40%;
    border-radius: 50%;
    }

    .container {
    padding: 16px;
    }

    span.psw {
    float: right;
    padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
    }

    /* The Close Button (x) */
    .close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
    }

    .close:hover,
    .close:focus {
    color: red;
    cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
    }
    
    @keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
    fieldset
    {
        border: dotted 1px #000;
        padding:10px;
        display:block;
        clear:both;
        margin:5px 0px;
    }
    legend
    {
        padding:0px 10px;
        background:black;
        color:#FFF;
    }
    input.add
    {
        float:right;
    }
    input.fieldname
    {
        float:left;
        clear:left;
        display:block;
        margin:5px;
    }
    select.fieldtype
    {
        float:left;
        display:block;
        margin:5px;
    }
    input.remove
    {
        float:left;
        display:block;
        margin:5px;
    }
    #yourform label
    {
        float:left;
        clear:left;
        display:block;
        margin:5px;
    }
    #yourform input, #yourform textarea
    {
        float:left;
        display:block;
        margin:5px;
    }
</style>

<!-- Vendor JS Files -->
<script src="{!! asset('template') !!}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/aos/aos.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/php-email-form/validate.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/purecounter/purecounter.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="{!! asset('template') !!}/assets/vendor/glightbox/js/glightbox.min.js"></script>

  <script src="{!! asset('template') !!}/assets/js/jquery-3.5.1.js"></script>
  <script src="{!! asset('template') !!}/assets/js/jquery.dataTables.min.js"></script>
  <script src="{!! asset('template') !!}/assets/js/dataTables.buttons.min.js"></script>
  <script src="{!! asset('template') !!}/assets/js/jszip.min.js"></script>
  <script src="{!! asset('template') !!}/assets/js/pdfmake.min.js"></script>
  <script src="{!! asset('template') !!}/assets/js/vfs_fonts.js"></script>
  <script src="{!! asset('template') !!}/assets/js/buttons.html5.min.js"></script>
  <script src="{!! asset('template') !!}/assets/js/buttons.print.min.js"></script>

  <!-- Template Main JS File -->
  <script src="{!! asset('template') !!}/assets/js/main.js"></script>

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
        <span>PROVIS</span>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          @if (Auth::user()->level == 'kontruksi')
            <li class="dropdown"><a href="#"><span>User</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                <li><a href="/jumlah_lokasi">Pengajuan Project</a></li>
                <li><a href="#">List Project</a></li>
                </ul>
            </li>
          @elseif (Auth::user()->level == 'procurement')
            <li class="dropdown"><a href="#"><span>Procurement & Partnership</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                <li><a href="/lihat_data_pengajuan">PR PO</a></li>
                <li><a href="#">Data Mitra</a></li>
                <li><a href="#">Performansi IOAN</a></li>
                <li><a href="#">Performansi Provisioning</a></li>
                <li><a href="#">Alker Sarker Mitra</a></li>
                <li><a href="#">Surat Teguran / Peringatan</a></li>
                </ul>
            </li>
          @elseif (Auth::user()->level == 'warehouse')
            <li class="dropdown"><a href="#"><span>Inventory & Asset</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                <li><a href="/lihat_data_po">Material Project</a></li>
                <li><a href="#">Stock Material</a></li>
                <li><a href="#">Stock Alker & Sarker</a></li>
                <li><a href="#">Stock NTE</a></li>
                </ul>
            </li>
          @else
            <li class="dropdown"><a href="#"><span>Inventory & Asset</span> <i class="bi bi-chevron-down"></i></a>
            </li>
          @endif
          <li><a class="nav-link scrollto" href="{{ url('/logout') }}">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

    @yield('content')
  
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <script>    
    $(document).ready(function() {
        var table = $('#example').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ],
            columnDefs: [{
                orderable: false,
                targets: [1,2,3]
            }]
        });
    } );

    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    </script>

</body>
</html>