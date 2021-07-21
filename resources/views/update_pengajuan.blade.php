@extends('layouts.atas')
@section('content')

    <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <ol>
          <li><a href="/admin_procurement">Notifikasi Pengajuan Project Terbaru</a></li>
          <li><a href="/id_pengajuann">Lihat Data Pengajuan</a></li>
          <li>Update Data Pengajuan</li>
        </ol>
        <h2>Update Data Pengajuan</h2>

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
                @foreach($liat as $li)
                    <form action="/proses_update_pengajuan" method="POST" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label for="exampleInputEmail1">ID Proactive</label>
                            {{ $li->id_proactive }}
                            <input type="hidden" name="id_proactive" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $li->id_proactive }}" >
                            <input type="hidden" name="id_pengajuan" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $li->id_pengajuan }}" >
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">ID Procurement</label>
                            <input type="text" name="id_procurement" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">ID PO</label>
                            <input type="text" name="id_po" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                        </div>                
                        <input type="submit" class="btn btn-primary" name="ok" value="Kirim" />
                    </form>
                @endforeach
            </div>
        </div>
      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->
@endsection