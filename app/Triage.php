<?php

namespace sisUrgencias;

use Illuminate\Database\Eloquent\Model;

class Triage extends Model
{
   protected $table = "urg_triage";
   protected $primaryKey = "IdTriage";
   public $timestamps = false;
   protected $fillable = ["IdTriage","Nombre","Grado"];
   protected $guarded = [];
   
}
