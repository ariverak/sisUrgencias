<?php

namespace sisUrgencias\Http\Controllers;

use Illuminate\Http\Request;
use sisUrgencias\Http\Requests;
use sisUrgencias\Paciente;
use sisUrgencias\Admision;
use Illuminate\Support\Facades\Redirect;
use sisUrgencias\Http\Requests\PacientesFormRequest;
use DB;

class EstadoController extends Controller
{
   public function __construct(){

   }
   public function index(Request $request){
    if($request){
        $admision = Admision::where("Estado","=",1)->get();
        return view("procesos.estado.index",["admision"=>$admision]);
    }
   }
  
}
