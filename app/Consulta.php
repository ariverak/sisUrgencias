<?php

namespace sisUrgencias;

use Illuminate\Database\Eloquent\Model;

class Consulta extends Model
{
   protected $table = "urg_consulta";
   protected $primaryKey = "IdConsulta";
   public $timestamps = false;
   protected $fillable = ["IdConsulta","Mot1","Mot2","Mot3"];
   protected $guarded = [];
}
