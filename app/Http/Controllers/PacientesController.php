<?php

namespace sisUrgencias\Http\Controllers;

use Illuminate\Http\Request;
use sisUrgencias\Http\Requests;
use sisUrgencias\Paciente;
use sisUrgencias\Triage;
use Illuminate\Support\Facades\Redirect;
use sisUrgencias\Http\Requests\PacientesFormRequest;
use DB;

class PacientesController extends Controller {
    public
    function __construct() {

    }
    public function index(Request $request){
        if($request){
        $query = trim($request->get("searchText"));
        $sexo = DB::table("sys_sexo")->get();
        $regiones = DB::table("sys_regiones")->orderBy("IdRegion","asc")->get();
        return view("procesos.paciente.create",["sexo"=>$sexo,"regiones"=>$regiones,"searchText"=>$query]);
      }
    }
    public function create(Request $request) {
        $paciente = new Paciente;
        $paciente->Run = $request->get("rut");
        $paciente->DV = $request->get("dv");
        $paciente->Nombre =$request->get("nombre");
        $paciente->ApePaterno = $request->get("apePaterno");
        $paciente->ApeMaterno = $request->get("apeMaterno");
        $paciente->FecNacimiento= $request->get("fecNac");
        $paciente->Domicilio = $request->get("domicilio");
        $paciente->Comuna = $request->get("comuna");
        $paciente->IdSexo = $request->get("sexo");
        $paciente->Telefono = $request->get("fono");
        $paciente->Email= $request->get("email");
        $paciente->save();
        return "Paciente Creado";
    }

    public function getPaciente($rut) {
        $paciente = Paciente::where('Run', '=', $rut)->first();
        $triage = Triage::all();
        if ($paciente != null) {
            return response()->view("procesos.admision.box",["paciente" => $paciente, "triage" => $triage], 200);
        } else {

            return response()-> view("errors.paciente_404", ["rut" => $rut], 404);
        }
    }

}