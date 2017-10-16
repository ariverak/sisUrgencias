@extends ('layouts.admin') @section ('contenido')  <div class="row">
    <div class="col-md-10 col-md-offset-1">
      <form class="form-horizontal" role="form">
        <fieldset>
          <!-- Form Name -->
          <legend>Agregar Paciente</legend>
          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Rut: </label>
            <div class="col-sm-3">
              <input type="text" id="txtRut" placeholder="18385526" class="form-control">
            </div>
            <div class="col-sm-1">
              <input type="text" id="txtDv" placeholder="k" class="form-control">
            </div>
            <label class="col-sm-2 control-label" for="txtNombre">Nombre: </label>
            <div class="col-sm-4">
              <input type="text" id="txtNombre" placeholder="Juan.." class="form-control">
            </div>
          </div>
            <br>
           <!-- Text input-->
           <div class="form-group">
            <label class="col-sm-2 control-label" for="txtApePat">Apellido Paterno:</label>
            <div class="col-sm-4">
              <input type="text" id="txtApePat" placeholder="Rivera..." class="form-control">
            </div>
            <label class="col-sm-2 control-label" for="txtApeMat">Apellido Materno:</label>
            <div class="col-sm-4">
              <input type="text" id="txtApeMat" placeholder="Vargas..." class="form-control">
            </div>
          </div>
          <br>
           <!-- Text input-->
           <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Selecciona un Sexo:</label>
            <div class="col-sm-4">
            <select class="form-control" id="slcSexo">
                        <option selected value="null" disabled>[Ingrese una Sexo]</option>
                        @foreach($sexo as $sex)
                        <option value="{{$sex->IdSexo}}">{{$sex->Genero}}</option>
                        @endforeach
              </select>
            </div> 
            <label class="col-sm-2 control-label" for="slcRegion">Selecciona Region:</label>
            <div class="col-sm-4">
            <select class="form-control" id="slcRegion">
                        <option selected value="null" disabled>[Ingrese una Region]</option>
                        @foreach($regiones as $region)
                        <option value="{{$region->IdRegion}}">{{$region->Nombre}} - {{$region->Region_Ordinal}}</option>
                        @endforeach
                    </select>
            </div>
          </div>
          <br>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="slcProvincias">Selecciona una Provincia:</label>
            <div class="col-sm-4">
            <select disabled class="form-control" id="slcProvincias"></select>
            </div>
            <label class="col-sm-2 control-label" for="slcComunas">Selecciona un Comuna:</label>
            <div class="col-sm-4">
            <select disabled class="form-control" id="slcComunas"></select>
            </div>
          </div>
          <br>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="txtFechNac">Fecha Nacimiento:</label>
            <div class="col-sm-4">
            <input type="date" class="form-control" id="txtFechNac">
            </div>
            <label class="col-sm-2 control-label" for="slcComunas">Domicilio:</label>
            <div class="col-sm-4">
            <input type="text" class="form-control" id="txtDomicilio">
            </div>
          </div>
          <br>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="txtFono">Fono:</label>
            <div class="col-sm-4">
            <input type="text" class="form-control" id="txtFono">
            </div>
            <label class="col-sm-2 control-label" for="txtEmail">Email:</label>
            <div class="col-sm-4">
            <input type="text" class="form-control" id="txtEmail">
            </div>
          </div>
          <br><br>
          <div class="form-group">
            <div class="text-center ">
              <div>
                <button style="margin-right:20px;" type="button" onclick ="limpiarForm()" class="btn btn-default"><i class="fa fa-eraser">
                </i> Limpiar</button>
                <button style="margin-left:20px;" type="button" onclick ="addPaciente()" class="btn btn-success"><i class="fa fa-floppy-o">
                </i> Guardar</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
@endsection