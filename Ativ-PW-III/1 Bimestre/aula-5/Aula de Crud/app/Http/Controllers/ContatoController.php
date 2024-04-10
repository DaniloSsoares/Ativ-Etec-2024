<?php

namespace App\Http\Controllers;

use App\Models\Contato;
use Illuminate\Http\Request;

class ContatoController extends Controller
{
public function index(){
    $contatos = Contato::all();
    return view('Listar', compact('contatos')); // Make sure the view name matches the actual view file name (case-sensitive)
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

    public function editar($id){
        $contato = Contato::find(id);
        return view('editar')->with("contato", $contato);
    }

    public function atualizar(Request $req){
        $contato = Contato::find($req->id);
        $contato->update(
         [
                 "name" => $req->name,
                 "endereco" => $req->endereco,
                 "bairro "=> $req-> bairro,
                 "cep" => $req->cep,
                 "telefone" => $req->telefone,
                 "estado" => $req->estado,
                 "acao"=> $req->acao 
         ]       
             ); 
        return redirect()->back();
    }
    public function  excluir(Request $req){
        $contato = Contato::find($req->$id) ;
        $contato->delete();
        return redirect()->back();
        
    }
 }
