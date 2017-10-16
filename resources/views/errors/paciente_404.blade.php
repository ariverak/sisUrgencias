<div class="box">
    <div data-widget="collapse" class="box-header with-border" style="background:#3c8dbc;color:white">
        <img src="{{asset('img/paciente.png')}}" width="25" alt="">
        <h3 class="box-title"> Paciente no Asignado</h3>
        <div class="box-tools pull-right">
            <button class="btn btn-default btn-sm" data-rut="{{$rut}}" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body container">
    <div class="row">
				<div style="margin-left:20px;" class="col-md-3">
					<input type="text" class="form-control" id="searchRut" placeholder="Buscar...">
				</div>
				<div class="col-md-1">
					<input type="button" onclick="loadPaciente(this)" value="Buscar" class="btnBuscar btn btn-info">
				</div>
			</div>
			<hr> 
        <div class="row">
            <div class="row text-center">
                <h3>Paciente {{$rut}} no Encontrado</h3>
            </div>
            <br>
            <div class="row text-center">
                <h4>¿Decea agregar este paciente?</h4>
                <a class="btn btn-success" onclick="spinnerAllWindow()" href="addpaciente">
                    <i class="fa fa-user-plus"></i> Agregar Nuevo</a>
            </div>
        </div>
        <div>
        </div>
    </div>
</div>