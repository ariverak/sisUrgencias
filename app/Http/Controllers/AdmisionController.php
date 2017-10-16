<?php

namespace sisUrgencias\Http\Controllers;

use Illuminate\Http\Request;
use sisUrgencias\Http\Requests;
use sisUrgencias\Paciente;
use sisUrgencias\Triage;
use sisUrgencias\Consulta;
use sisUrgencias\Admision;
use Illuminate\Support\Facades\Redirect;
use sisUrgencias\Http\Requests\PacientesFormRequest;
use DB;

class AdmisionController extends Controller
{
   public function __construct(){

   }
   public function index(Request $request){
    if($request){
        $query = trim($request->get("searchText"));
        $sexo = DB::table("sys_sexo")->get();
        $regiones = DB::table("sys_regiones")->orderBy("IdRegion","asc")->get();
        return view("procesos.admision.index",["sexo"=>$sexo,"regiones"=>$regiones,"searchText"=>$query]);
    }
   }
   public function create(Request $request){
    $query = $request->get("region");
    $provincias = DB::table("sys_provincias")->where("IdRegion",$query)->get();
    return response()->json(array('provincias'=>$provincias));
    }
    public function getPacientesWindow($rut){
        $paciente = Paciente::where('Run', '=', $rut)->first();
        $triage = Triage::all();
        if($paciente != null){
           return view("procesos.admision.box",["paciente"=>$paciente,"triage"=>$triage]);
       }else{
           return null;
       }
    }
    public function loadPacienteWindow($rut){
        if($rut != ""){
            $paciente = Paciente::where('Run', '=', $rut)->first();
            $triage = Triage::orderBy('Name')->get();
            if($paciente != null){
               return view("procesos.admision.box",["paciente"=>$paciente,"triage"=>$triage]);
           }else{
               return null;
           }
        }
    }
    public function newAdmision(){
         return view("procesos.admision.box",["paciente"=>null,"triage"=>null]);
    }
  
   public function generarAdmision(Request $request)
   { 
          if($request->method()){
            $motivos = $request->motivos;
            $consulta = new Consulta;
            $admision = new Admision;
            $triage = Triage::where('IdTriage', '=', $request->triage)->first();
            $paciente = Paciente::where('Run', '=', $request->rut)->first();
            foreach ($motivos as $clave => $valor){
                if($clave == 0)
                $consulta->Mot1 = $valor;
                else if($clave == 1)
                $consulta->Mot2 = $valor;
                else if($clave == 2)
                $consulta->Mot3 = $valor;
            }
            $consulta->save();

            $admision->IdPaciente = $paciente->IdPaciente;
            $admision->IdTriage = $triage->IdTriage;
            $admision->IdConsulta = $consulta->IdConsulta;
            $admision->FecHorAdmision = DB::raw('NOW()');
            $admision->Estado = 1;
            $admision->save();
            return "Admision Exitosa";
          }
          else {
              return "metodo invalido";
          }
          
   }
}
