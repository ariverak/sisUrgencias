<?php
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::resource('/','EstadoController');
Route::resource('estado','EstadoController');
Route::resource('admision','AdmisionController');
Route::resource('addpaciente','PacientesController@index');

Route::resource('api/provincias','ProvinciasController');
Route::resource('api/comunas','ComunasController');
Route::get('api/pacienteswindow/{rut}', 'AdmisionController@getPacientesWindow');
Route::get('api/newAdmision/','AdmisionController@newAdmision');
Route::get('api/pacientes/{rut}', 'PacientesController@getPaciente');

Route::post('api/genAdmision/',"AdmisionController@generarAdmision");
Route::post('api/paciente','PacientesController@create');
