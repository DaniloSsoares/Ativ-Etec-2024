<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContatoController;
use App\Http\Controllers\filmesController;

#Route::get('/', [\App\Http\Controllers\ContatoController::class, 'index']);

// Home page route
Route::get("/", [filmesController::class, 'index']);

Route::get("/listar", [filmesController::class, 'listar']);

Route::get("/cadastrar", [filmesController::class, "cadastrar"]);

Route::get('/atualizar', function () {
    return view('atualizacao');
});

Route::get('/deletar', function () {
    return view('deletar');
});





Route::post("/adicionarContato", [filmesController::class,"adicionar"]);

Route::post("/atualizar/{id}", [filmesController::class,"atualizar"]);

Route::get("/excluir/{id}", [filmesController::class, "excluir"]);

Route::get("/editar/{id}", [filmesController::class, "editar"]);



