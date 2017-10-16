@extends ('layouts.admin') @section ('contenido')
<div class="row">
	<div class="main-estado panel panel-default col-sm-10 col-sm-offset-1">
	<h3>Admisiones Recientes</h3>
		<div class="panel-body">
		<div class="row">
			<div class="col-md-12">
				<!--Contenido-->
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="table-responsive">
									<table id="myTable" class="table table-striped">
										<thead>
											<th>Rut</th>
											<th>Nombre</th>
											<th>Apellidos</th>
											<th>Triage</th>
											<th>Ingreso</th>
										</thead>
										<tbody>
										@foreach($admision as $admi)
										<tr class="fila">
											<td>{{ $admi->paciente->Run}}</td>
											<td>{{ $admi->paciente->Nombre}}</td>
											<td>{{ $admi->paciente->ApePaterno}} {{$admi->paciente->ApeMaterno}}</td>
											<td>{{ $admi->triage->Grado}}</td>
											<td>{{ $admi->FecHorAdmision}}</td>
										</tr>
										@endforeach
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
					<!--	<div class="panel panel-default">
							<div class="panel-heading" style="text-align:center">Juan Andres Rivera Vargas</div>
							<div class="panel-body" style="margin:5px;">
								<div class="row">

								</div>

							</div> -->
						</div>
					</div>
				</div>
			</div>
			<!--Fin Contenido-->
		</div>
		</div>
	</div>
</div>

@endsection