<form class="form-horizontal" role="form">
    <fieldset class="col-sm-10 col-sm-offset-1">
        <legend class="legends">Consulta</legend>
        <!-- Text input-->
        <div class="form-group triage-camilla-content">
            <div class="col-sm-6 triage-content">
                <label class="control-label" for="slcTriage">Triage: </label>
                <select onchange="triageChange(this)" class="slcTriage form-control" id="slcTriage">
                    <option value="null" selected disabled>[Ingrese una Opcion]</option>
                    @foreach ($triage as $tria)
                    <option value="{{$tria->IdTriage}}">{{$tria->Grado}} - {{$tria->Nombre}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-sm-6 camillas-content">

            </div>
        </div>
        <br>
        <div class="form-group">
            <div class="col-sm-12">
                <b class="col-sm-4">Motivos de Consulta</b>
                <a class="tooltips col-sm-1" href="#">
                    <span>Los motivos en blanco no se guardarán</span>
                    <img src="public/img/question.png" width="15" />
                </a>
                <img class="btnAddMotivo col-sm-offset-5" onclick="addMotivo(this)" src="public/img/add.png" width="30" alt="">
            </div>
        </div>
        <div class="form-group motivos-form">
            <div class="col-sm-11 motivos-content">
                <input type="text" placeholder="Motivo..." class="form-control">
            </div>
        </div>
    </fieldset>