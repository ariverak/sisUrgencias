function addPaciente(){
  $.post("http://manticora.ramocacho.cl/sisUrgencias/api/paciente", {
     rut : $("#txtRut").val(),
     nombre : $("#txtNombre").val(),
     apePaterno : $("#txtApePat").val(),
     apeMaterno : $("#txtApeMat").val(),
     sexo : $("#slcSexo").val(),
     comuna : $("#slcComunas").val(),
     fecNac : $("#txtFechNac").val(),
     domicilio : $("#txtDomicilio").val(),
     fono : $("#txtFono").val(),
     email : $("#txtEmail").val()
  }, function (data) {
    swal(
      data,
      "El Paciente ha creado a Exitosamente!",
      'success'
    )
    limpiarForm();
  });
}
function limpiarForm(){
    $("#txtRut").val("");
    $("#txtNombre").val("");
    $("#txtApePat").val("");
    $("#txtApeMat").val("");
    $("#slcSexo").val("null");
    $("#slcRegion").val("null");
    $("#slcProvincias").html("");
    $("#slcProvincias").prop("disabled",true);
    $("#slcComunas").html("");
    $("#slcComunas").prop("disabled",true);
    $("#txtFechNac").val(null);
    $("#txtDomicilio").val("");
    $("#txtFono").val("");
    $("#txtEmail").val("");
}