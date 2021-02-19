<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class transaksiakhir extends Model
{
    //
    public $table = "transaksi_akhir";
    protected $primaryKey = 'id_transaksi';
    
    protected $fillable = [
      'id_transaksi',
      'id_proactive',
      'total_harga_material',
      'total_harga_jasa',
      'total_sebelum_ppn',
      'ppn',
      'total_setelah_ppn',
    ];
}
