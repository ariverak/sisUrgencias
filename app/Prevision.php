<?php

namespace sisUrgencias;

use Illuminate\Database\Eloquent\Model;

class Prevision extends Model
{
   protected $table = "sys_prevision";
   protected $primaryKey = "IdPrevision";
   public $timestamps = false;
   protected $fillable = ["DescPrevision"];
   protected $guarded = [];
}
