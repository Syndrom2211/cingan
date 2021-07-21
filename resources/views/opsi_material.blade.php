@extends('layouts.atas')
@section('content')

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
                        <th>Harga Material</th>
                        <th>Kuantitas</th>
                    </tr>

                    {{ csrf_field() }}  
                    
                    @foreach($data as $datanya)  
                    <input type="hidden" value="{{ $datanya->id_pengajuan }}" name="id_pengajuan" />          
                        <tr>
                            <input type="hidden" name="id_rincian[]" value="{{ $datanya->id_rincian }}" />
                            <td>{{ $datanya->id }}</td>
                            <td>{{ $datanya->designator }}</td>
                            <td>{{ $datanya->uraian_pekerjaan }}</td>
                            <td>{{ $datanya->uraian_pekerjaan }}</td>
                            <td>
                                <!-- <select name="harga_material[]">
                                    <option value="0">Tidak dengan material</option>
                                    <option value="{{ $datanya->harga_material }}">Dengan Material</option>
                                </select> -->                           
                                <input type="text" value="{{ $datanya->harga_material }}" name="harga_material[]" />     
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
  @endsection