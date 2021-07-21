<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class procurement extends Model
{
    //
    public $table = "procurement";
    protected $primaryKey = 'id_procurement';
    
    protected $fillable = [
      'id_procurement',
      'id_proactive',
      'id_pengajuan',
      'id_po',
    ];
}
