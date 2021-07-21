@extends('layouts.atas_welcome')
@section('content')
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center">
        <img src="{!! asset('template/') !!}/assets/img/logo.png" alt="">
        <span>PROVIS</span>
      </a>

      <nav id="navbar" class="navbar">    
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
    
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center">
          <h1 data-aos="fade-up">Selamat datang di wesbite kami...</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Akses Login</h2>
          <div data-aos="fade-up" data-aos-delay="600">
            <div class="text-center text-lg-start">
            <form class="form-horizontal" method="POST" action="{{ route('login') }}">
              <input name="_token" type="hidden" value="{{ csrf_token() }}"/>
              {{ csrf_field() }}
              
              <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                <label for="exampleInputEmail1">Email address</label>
                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                @if ($errors->has('email'))
                    <span class="help-block">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
                
              </div>
              <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                <label for="exampleInputPassword1">Password</label>
                <input id="password" type="password" class="form-control" name="password" required>

                @if ($errors->has('password'))
                    <span class="help-block">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                @endif
              </div>

              <div class="form-group">
                <div class="form-check">
                <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                  <label class="form-check-label" for="exampleCheck1">Ingat Saya</label>
                </div>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            </div>
          </div>
        </div>
        <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
          <img src="{!! asset('template/assets/img/hero-img.png') !!}" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row gy-4">

          <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
            <h4>Contact Us</h4>
            <p>
              <strong>Phone:</strong> 0811 955 4882<br>
              <strong>Email:</strong> helpdesk.it@telkomakses.co.id<br>
              <strong>Working Hour:</strong> 08.00 - 15.00 WIB<br>
            </p>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>PROVIS</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->
@endsection