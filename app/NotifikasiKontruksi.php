<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class notifikasikontruksi extends Model
{
    //
    public $table = "notifikasi_kontruksi";
    protected $primaryKey = 'id_notifikasi_k';
    
    protected $fillable = [
      'id_notifikasi_k',
      'id_pengajuan',
      'status_notifikasi',
    ];
}
