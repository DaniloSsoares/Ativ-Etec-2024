<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContatoController;

#Route::get('/', [\App\Http\Controllers\ContatoController::class, 'index']);

// Home page route
Route::get('/', function () {
    return view('welcome');
});


Route::get('/Listar', [ContatoController::class, 'index']);


Route::post("/adicionarContato", [ContatoController::class,"adicionar"]);

Route::post("/adicionarContato", [ContatoController::class,"adicionar"]);

Route::post("/adicionarContato", [ContatoController::class,"adicionar"]);

Route::get('/cadastrar', function () {
    return view('cadastrar');
});

Route::get('/atualizar', function () {
    return view('atualizacao');
});

Route::get('/deletar', function () {
    return view('deletar');
});