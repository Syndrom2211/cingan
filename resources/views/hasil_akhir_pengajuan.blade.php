@extends('layouts.atas')
@section('content')

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
                    $id_pengajuan = $datanya->id_pengajuan;
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
                <input type="hidden" name="id_pengajuan" value="<?php echo $id_pengajuan; ?>" >
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
@endsection