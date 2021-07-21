<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class rincianpengajuan extends Model
{
    //
    public $table = "rincian_pengajuan";
    protected $primaryKey = 'id_rincian';
    
    protected $fillable = [
      'id_rincian',
      'id_pengajuan',
      'id',
    ];
}
