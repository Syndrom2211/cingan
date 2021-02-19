<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotifikasiProcurement extends Model
{
    //
    public $table = "notifikasi_procurement";
    protected $primaryKey = 'id_notifikasi_pro';
    
    protected $fillable = [
      'id_notifikasi_pro',
      'id_procurement',
      'status_notifikasi',
    ];
}
