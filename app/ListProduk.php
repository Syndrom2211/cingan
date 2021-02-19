<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class listproduk extends Model
{
    //
    public $table = "list_produk";
    protected $primaryKey = 'id';
    
    protected $fillable = [
      'id',
      'designator',
      'uraian_pekerjaan',
      'satuan',
      'harga_material',
      'harga_jasa',
    ];
}
