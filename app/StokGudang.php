<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class stokgudang extends Model
{
    ////
    public $table = "stok_gudang";
    protected $primaryKey = 'id_stok_gudang';
    
    protected $fillable = [
      'id_stok_gudang',
      'id',
      'kuantitas',
    ];
}
