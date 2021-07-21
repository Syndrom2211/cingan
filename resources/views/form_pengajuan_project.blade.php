@extends('layouts.atas')
@if (Auth::user()->level == 'kontruksi')
  @section('content')

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
      <div class="container" style="border:1px dotted grey">
      
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
                  <label for="exampleInputEmail1">ID Pengajuan</label>
                  <input type="text" name="id_pengajuan" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
              </div>
              <hr>
              <?php
              for($i=1;$i<=$hasil2;$i++){
              ?>
              <h2><u>Lokasi ke-<?php echo $i; ?></u></h2>
                  <div class="form-group">
                      <label for="exampleInputEmail1">ID Proactive</label>
                      <input type="text" name="id_proactive[]" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                  </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">ID SAP</label>
                      <input type="text" name="id_sap[]" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                  </div>

                  <div class="form-group">
                      <label for="exampleInputEmail1">Nama Lokasi</label>
                      <input type="text" name="nama_lokasi[]" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                  </div>
                  
                  <div class="form-group">
                      <label for="exampleInputEmail1">Pilih Designator:</label>
                      <table id="example<?php echo $i;?>" class="table" style="width:100%">
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
                              @foreach($hasil as $datanya)
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
                  <hr>           
                  <script>
                  $(document).ready(function() {
                          var table = $('#example<?php echo $i;?>').DataTable({
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
                  </script>       
            <?php
            }
            ?>
            <input type="submit" class="btn btn-primary" name="ok" value="Kirim" />
            </form>
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
