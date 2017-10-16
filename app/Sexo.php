<?php

namespace sisUrgencias;

use Illuminate\Database\Eloquent\Model;

class Sexo extends Model
{
   protected $table = "sys_sexo";
   protected $primaryKey = "IdSexo";
   public $timestamps = false;
   protected $fillable = ["Genero"];
   protected $guarded = [];
}
