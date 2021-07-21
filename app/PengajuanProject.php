<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pengajuanproject extends Model
{
    //
    public $table = "pengajuan_project";
    protected $primaryKey = 'id_proactive';
    
    protected $fillable = [
      'id_proactive',
      'id_pengajuan',
      'id_sap',
      'nama_lokasi',
      'file_nde',
      'file_mom',
      'file_boq',
    ];
}
