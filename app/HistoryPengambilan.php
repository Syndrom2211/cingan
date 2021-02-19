<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HistoryPengambilan extends Model
{
    //
    public $table = "history_pengambilan";
    protected $primaryKey = 'id_history_pengambilan';
    
    protected $fillable = [
      'id_history_pengambilan',
      'id_rincian',
      'sisa_material',
    ];
}
