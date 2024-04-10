<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContatoController;

#Route::get('/', [\App\Http\Controllers\ContatoController::class, 'index']);

Route::get("/", [ContatoController::class, "index"]);
Route::post("/adicionarContato", [ContatoController::class,"adicionar"]);

Route::get('/', function () {
    return view('welcome');
});

Route::get('/cadastrar', function () {
    return view('cadastrar');
});

Route::get('/atualizar', function () {
    return view('atualizacao');
});

Route::get('/deletar', function () {
    return view('deletar');
});

Route::get('/Listar', function () {
    return view('Listar');
});
