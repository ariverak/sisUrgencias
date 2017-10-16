$(document).ready(function() {
  if (localStorage.getItem("pacientes") === null){
    localStorage.setItem("pacientes","[]");
  }else{
    let localPacientes = JSON.parse(localStorage.getItem("pacientes"));
    localPacientes.forEach(e => {
      $.ajax({
        method: "GET",
        url: "http://manticora.ramocacho.cl/sisUrgencias/api/pacienteswindow/" + e.rut,
        success: function (data) {
          $(".app-content").append(data);
        }
      })
    });
  }
  $("#btnNewAdmision").click(function(){
    $.ajax({
      method: "GET",
      url: "http://manticora.ramocacho.cl/sisUrgencias/api/newAdmision",
      success: function (data) {
        $(".app-content").append(data);
      }
    })
  });
  $("#slcRegion").change(function () {
    let reg_value = this.value;
    $.ajax({
      method: "GET",
      url: "http://manticora.ramocacho.cl/sisUrgencias/api/provincias",
      data: {
        region: reg_value
      },
      success: function (data) {
        let slcProvincias = $("#slcProvincias");
        let jsonProvincias = data.provincias;
        let cantProvincias = data.provincias.length;
        slcProvincias.prop('disabled', false);
        slcProvincias.html("<option selected disabled>[Seleccione una provincia]</option>");
        $("#slcComunas").prop("disabled", true);
        $("#slcComunas").html("");
        jsonProvincias.forEach(e => {
          slcProvincias.append("<option value=" + e.IdProvincia + ">" + e.Nombre + "</option>")
        });
      }
    })
  });
  $("#slcProvincias").change(function () {
    let prov_value = this.value;
    $.ajax({
      method: "GET",
      url: "http://manticora.ramocacho.cl/sisUrgencias/api/comunas",
      data: {
        provincia: prov_value
      },
      success: function (data) {
        let slcComunas = $("#slcComunas");
        let jsonComunas = data.comunas;
        let cantComunas = data.comunas.length;
        slcComunas.prop('disabled', false);
        slcComunas.html("<option selected disabled>[Seleccione una comuna]</option>");
        jsonComunas.forEach(e => {
          slcComunas.append("<option>" + e.Nombre + "</option>")
        });
      }
    })
  });
})


function loadPaciente(control) {
    let localPacientes = JSON.parse(localStorage.getItem("pacientes"));
    //esto trae el input hermano
    let inputSearch = $(control).parent().parent().children().first().children();
    let rut = $(inputSearch).val();
    if (localPacientes.filter(e => e.rut == rut).length > 0) {
      swal(
        'Oops...',
        'Este paciente ya esta en proceso!',
        'error'
      )
    } else {
      if(rut.length > 0){ 
      $.ajax({
        method: "GET",
        url: "http://manticora.ramocacho.cl/sisUrgencias/api/pacientes/" + rut,
        complete: function (xhr, statusText) {
          if (statusText == "success") {
            localPacientes.push({
              "rut": rut
            });
            localStorage.setItem('pacientes', JSON.stringify(localPacientes));
          }
          let parentBox = $(control).parents(".box").first().parent();
          parentBox.html(xhr.responseText);
          let a = $(parentBox).children();
          $(a[0]).children().removeClass("collapsed-box");
        }
      })
     }
    }
}

function limpiarBox(control) {
  let parentBox = $(control).parents(".box").first().parent();
  $.ajax({
    method: "GET",
    url: "http://manticora.ramocacho.cl/sisUrgencias/api/newAdmision",
    success: function (data) {
      let localPacientes = JSON.parse(localStorage.getItem("pacientes"));
      let newLocalPacientes = localPacientes.filter(e => e.rut != $(control).attr("data-rut"));
      localStorage.setItem('pacientes', JSON.stringify(newLocalPacientes));
      parentBox.html(data);
    }
  })
}
function addMotivo(control) {
  let motivosContent = $(control).parents("fieldset").children(".motivos-form").children(".motivos-content");
  let numHij = motivosContent.children().length;
  if (numHij < 3) {
    $(motivosContent).append('<input type="text" placeholder="Motivo..." class="form-control">');
  }
}

function triageChange(control) {
  let recervaCamilla = $(control).parents(".triage-content").first().children(".recervaCamilla");
  console.log(recervaCamilla);
}

function generarAdmision(control) {
  let triageValue = $($(control).parents(".container").children().first().children()[1]).children().
  first().children().first().children().children(".triage-camilla-content").children(".triage-content")
  .children()[1].value;
  let inputsMotivos = $($(control).parents(".container").children().first().children()[1]).children().
  first().children().first().children().children(".motivos-form").children().first().children();
  console.log(inputsMotivos);
  if (triageValue != "null") {
    //AQUI LA LOGICA
   let p = new Promise(function (resolve, reject) {
      let motivos = [];
      $(inputsMotivos).each(function (index, elem) {
        let value = $(elem).val();
        if (value.trim() != "") {
          motivos.push(value);
        }
      });
      if(motivos.length > 0){
        resolve({motivos: motivos});
      }else{
        reject("debe contener al menos un motivo");
        swal(
          'Oops...',
          'Debe contener al menos un motivo!',
          'error'
        )
      }
    }).then(e => {
      let rut = $(control).attr("data-rut");
      $.post("http://manticora.ramocacho.cl/sisUrgencias/api/genAdmision", {
        rut: rut,
        motivos: e.motivos,
        triage: triageValue
      }, function (data) {
        swal(
          data,
          "El Paciente ha Ingresado a Urgencias!",
          'success'
        )
        let box = $(control).parents(".box").first();
        let localPacientes = JSON.parse(localStorage.getItem("pacientes"));
        let newLocalPacientes = localPacientes.filter(e => e.rut != rut);
        localStorage.setItem('pacientes', JSON.stringify(newLocalPacientes));
        box.slideUp(500);
      });
    });
  }else{
    swal(
      'Oops...',
      'Debe especificar triage!',
      'error'
    )
  }
}