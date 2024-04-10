<?php

namespace App\Http\Controllers;

use App\Models\Contato;
use Illuminate\Http\Request;

class ContatoController extends Controller
{
public function index(Request $req){
$contato = Contato::all();
return view('cadastrar')->with("contato", $contato);

}


    public function adicionar(Request $req){
        $contato = new Contato;
        $contato->name = $req->name;
        $contato->endereco = $req->endereco;
        $contato->bairro = $req-> bairro;
        $contato->cep = $req->cep;
        $contato->telefone = $req->telefone;
        $contato->estado = $req->estado;
        $contato->acao= $req->acao;
        $contato->save();
        return redirect()->back();
    }
 }
