<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class opsimaterial extends Model
{
    //
    public $table = "opsi_material";
    protected $primaryKey = 'id_opsi';
    
    protected $fillable = [
      'id_opsi',
      'id_rincian',
      'harga_material',
      'harga_jasa',
      'kuantitas',
    ];
}
