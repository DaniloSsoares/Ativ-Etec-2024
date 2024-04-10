<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContatoController;

#Route::get('/', [\App\Http\Controllers\ContatoController::class, 'index']);

// Home page route
Route::get('/', function () {
    return view('welcome');
});

Route::get("/cadastrar", [ContatoController::class, "cadastrar"]);

Route::get('/atualizar', function () {
    return view('atualizacao');
});

Route::get('/deletar', function () {
    return view('deletar');
});



Route::post("/adicionarContato", [ContatoController::class,"adicionar"]);

Route::post("/atualizar/{id}", [ContatoController::class,"atualizar"]);

Route::get("/excluir/{id}", [ContatoController::class, "excluir"]);

Route::get("/editar/{id}", [ContatoController::class, "editar"]);

Route::get("/Listar",[ContatoController::class, "Listar"]);

