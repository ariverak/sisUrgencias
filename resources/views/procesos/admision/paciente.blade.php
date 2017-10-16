<form class="form-horizontal" role="form">
	<fieldset class="col-sm-10 col-sm-offset-1">
	<legend class="legends">Dato del Paciente</legend>
		<!-- Text input-->
		<div class="form-group">
			<div class="col-sm-6">
				<label class="control-label" for="rut">Rut: </label>
				<input disabled type="text" value="{{$paciente->Run}}-{{$paciente->DV}}" class="form-control" id="rut">
			</div>
			<div class="col-sm-6">
				<label class="control-label" for="txtComuna">Comuna:</label>
				<input disabled type="text" value="{{$paciente->Comuna}}" class="form-control" id="txtComuna">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<label class="control-label" for="txtFono">Fono:</label>
				<input disabled type="text" value="{{$paciente->Telefono}}" id="txtFono" class="form-control">
			</div>
			<div class="col-sm-6">
				<label class="control-label" for="txtDomicilio">Domicilio:</label>
				<input disabled type="text" value="{{$paciente->Domicilio}}" id="txtDomicilio" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<label class="control-label" for="txtSexo">Sexo:</label>
				<input disabled type="text" value="{{$paciente->sexo->Genero}}" class="form-control" id="txtSexo">
			</div>
			<div class="col-sm-6">
				<label class="control-label" for="txtFechNac">Fecha Nacimiento:</label>
				<input disabled type="date" value="{{$paciente->FecNacimiento}}" class="form-control" id="txtFechNac">
			</div>
		</div>
		<br>
		<br>
	</fieldset>
</form>