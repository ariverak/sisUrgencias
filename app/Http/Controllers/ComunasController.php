<?php

namespace sisUrgencias\Http\Controllers;

use Illuminate\Http\Request;
use sisUrgencias\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use DB;

class ComunasController extends Controller
{
   public function __construct(){

   }
   public function index(Request $request){
    if($request){
        $query = $request->get("provincia");
        $comunas = DB::table("sys_comunas")->where("IdProvincia",$query)->get();
        return response()->json(array('comunas'=>$comunas));;
    }
   }
  
}
