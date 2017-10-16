<?php

namespace sisUrgencias\Http\Controllers;

use Illuminate\Http\Request;
use sisUrgencias\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use DB;

class ProvinciasController extends Controller
{
   public function __construct(){

   }
   public function index(Request $request){
    if($request){
        $query = $request->get("region");
        $provincias = DB::table("sys_provincias")->where("IdRegion",$query)->get();
        return response()->json(array('provincias'=>$provincias));;
    }
   }
  
}
