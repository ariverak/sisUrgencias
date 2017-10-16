<?php

namespace sisUrgencias;

use Illuminate\Database\Eloquent\Model;

class Admision extends Model
{
   protected $table = "urg_admision";
   protected $primaryKey = "IdAdmision";
   public $timestamps = false;
   protected $fillable = ["IdPaciente","IdTriage","IdConsulta","FecHorAdmision"];
   protected $guarded = [];
   public function paciente()
   {
       return $this->belongsTo('sisUrgencias\Paciente','IdPaciente');
   }
   public function triage()
   {
       return $this->belongsTo('sisUrgencias\Triage','IdTriage');
   }
   public function consulta()
   {
       return $this->belongsTo('sisUrgencias\Consulta','IdConsulta');
   }
}
