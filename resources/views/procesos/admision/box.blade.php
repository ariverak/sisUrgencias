<div>
@if ($paciente != null)
<div class="box collapsed-box">
	@else
	<div class="box">
		@endif
		<div data-widget="collapse" class="box-header with-border" style="background:#3c8dbc;color:white">
			<img src="img/paciente.png" width="25" alt="">
			<h3 class="box-title">
				@if ($paciente != null)
				<span style="color:yellow">Paciente {{$paciente->Nombre}} 
				{{$paciente->ApePaterno}} {{$paciente->ApeMaterno}} 
				- <span style="color:white">{{$paciente->prevision->DescPrevision}}</span></span>
				@else
				 Paciente no Asignado
				@endif
			</h3>
			<div class="box-tools pull-right">
				<button class="btn btn-default btn-sm"
				@if ($paciente != null)
				 data-rut="{{$paciente->Run}}" @endif
				 data-widget="remove"><i class="fa fa-times"></i></button>
			</div>
		</div>
		<div class="box-body container">
			@if ($paciente == null)
			<div class="row">
				<div style="margin-left:20px;" class="col-md-3">
					<input type="text" class="form-control" id="searchRut" placeholder="Buscar...">
				</div>
				<div class="col-md-1">
					<button onclick="loadPaciente(this)" value="Buscar" class="btnBuscar btn btn-info">
					<i class="fa fa-search-plus"></i></button>
				</div>
			</div>
			<hr> 
			@endif
			<div class="row">
				<div class="col-sm-6">
					<div class="row box-paciente">
						@if ($paciente != null)
						 @include('procesos.admision.paciente')
						  @endif
					</div>
				</div>
				<div class="col-sm-6">
					<div class="row box-consulta">
						@if ($paciente != null)
						 @include('procesos.admision.consulta')
						  @endif
					</div>
				</div>
			</div>
			@if ($paciente != null)
			<div class="row">
				<hr style="margin-top:10px;margin-bottom:10px">
				<form id="admision">
				<div class="col-sm-3"></div>
				<button  @if ($paciente != null)
				 data-rut="{{$paciente->Run}}" @endif onclick="limpiarBox(this)" class="btn btn-info col-sm-2">
				 <i class="fa fa-times"></i> Desvincular Paciente</button>
				 <div class="col-sm-1"></div>
				<button @if ($paciente != null)
				 data-rut="{{$paciente->Run}}" @endif onclick="generarAdmision(this)"
				  class="btnAsignar btn btn-success col-sm-2"><i class="fa fa-heartbeat"></i> Ingresar a Urgencias</button>
				<div class="col-sm-3"></div>
				</form>
			</div>
			@endif
		</div>
	</div>
</div>
