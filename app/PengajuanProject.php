<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pengajuanproject extends Model
{
    //
    public $table = "pengajuan_project";
    protected $primaryKey = 'id_pengajuan';
    
    protected $fillable = [
      'id_pengajuan',
      'id_proactive',
      'id_sap',
      'nama_lokasi',
      'file_nde',
      'file_mom',
      'file_boq',
    ];
}
