<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Atención de Urgencias | Hospital Buena Salud</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="css/font-awesome.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.css">

  <link rel="stylesheet" href="css/sweetalert2.css">
  <link rel="stylesheet" href="css/tooltip.css">
  <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="css/_all-skins.min.css">
  <link rel="apple-touch-icon" href="img/apple-touch-icon.png'">
  <link rel="shortcut icon" href="img/favicon.ico">
  <style>
  .btnAddMotivo{
    cursor: pointer;
  }
  .table-hover thead th{
    background-color: #3c8dbc;
    color:white;
  }
  .table-hover tbody tr:hover td {
    background-color: yellow;
    cursor: pointer;
  }
  .form-group {
    margin-bottom: 0px; 
    }
    .legends{
      margin-bottom: 0px;
    }
  </style>
</head>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <header class="main-header">

      <!-- Logo -->
      <a href="http://manticora.ramocacho.cl/sisUrgencias/" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>AT</b>U</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><i class="fa fa-hospital-o"><b> Urgencias</b></i></span>
      </a>

      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
     
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->

            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <small class="bg-red">Online</small>
                  <span class="hidden-xs">Juan Rivera Vargas</span>
                </a>
            </li>

          </ul>
        </div>

      </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">
        <!-- Sidebar user panel -->

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
          <li class="header"></li>
          <li><a onclick="spinnerAllWindow()" href="estado"><i class="fa fa-ambulance"></i>Estado Urgencias</a></li>
          <li><a onclick="spinnerAllWindow()" id="btnAdmision" href="admision"><i class="fa fa-plus-square-o"></i> Admisión</a></li>
          <li><a onclick="spinnerAllWindow()" href="addpaciente"><i class="fa fa-user-plus"></i> Agregar Paciente</a></li>
        </ul>
      </section>
      <!-- /.sidebar -->
    </aside>
    <!--Contenido-->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

      <!-- Main content -->
      <section class="content">
        @yield('contenido')

      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <!--Fin-Contenido-->
    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b>Version</b> 0.1.0
      </div>
      <strong>Copyright &copy; 2017-2020 <a href="#">JRIVERA-CODE</a>.</strong> Todos los derechos recervados.
    </footer>
    <!-- jQuery 2.1.4 -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
      crossorigin="anonymous"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/sweetalert2.js"> </script>
    <!-- AdminLTE App -->
    <script src="js/app.js"></script>
    <script src="js/admision.js"> </script>
    <script src="js/loadingoverlay.min.js"> </script>
    <script src="js/addpaciente.js"> </script>
<script type="text/javascript" charset="utf8" src="js/jquery.dataTables.js"></script>
<script>
function spinnerAllWindow(){
    $.LoadingOverlay("show", {
      image       : "",
      fontawesome : "fa fa-spinner fa-spin"
  });
}
    $(document).ready( function () {
        $('#myTable').DataTable({
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontró nada",
            "info": "Mostrando la página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)"
        }
        });
    });
</script>
  
</body>

</html>