<?php

namespace sisUrgencias;

use Illuminate\Database\Eloquent\Model;

class Paciente extends Model
{
   protected $table = "sys_pacientes";
   protected $primaryKey = "IdPaciente";
   public $timestamps = false;
   protected $fillable = ["IdPaciente","Run","Nombre","ApePaterno","ApeMaterno",
   "FecNacimiento","Domicilio","Comuna","Telefono","Email"];
   public function sexo()
   {
       return $this->belongsTo('sisUrgencias\Sexo','IdSexo');
   }
   public function prevision()
   {
       return $this->belongsTo('sisUrgencias\Prevision','IdPrevision');
   }
   protected $guarded = [];
}
