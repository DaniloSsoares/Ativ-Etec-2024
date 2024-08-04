<?php

namespace App\Http\Controllers;
use App\Models\Filmes;
use Illuminate\Http\Request;

class filmesController extends Controller
{
    public function index(){
        $filmes = Filmes::all();
        return view('welcome')->with("filmes", $filmes);
    }

    public function cadastrar(Request $req){
        $filme= Filmes::all();
        return view('cadastrar')->with("filmes", $filme);
    }
    
    
        public function adicionar(Request $req){
            $filme = new Filmes;
            $filme->titulo = $req->titulo;
            $filme->subtitulo = $req->subtitulo;
            $filme->anolanc = $req-> anolanc;
            $filme->duracao = $req->duracao;
            $filme->classi = $req->classi;
            $filme->genero = $req->genero;
            $filme->pontuacao = $req->pontuacao;
            $filme->diretor = $req->diretor;
            $filme->sinopse= $req->sinopse;
            $filme->capa= $req->capa;

          //hasFile está sendo usado para verificar se uma qrquivo com nome capa do form foi enviado na requisição
           if ($req->hasFile('capa') && $req->file('capa')->isValid()) {
            //a proxima linha armazena o arquivo enviado para o arquivo capas
            $filme->capa = $req->capa->store('capas', 'public');
           }
            $filme->save();
            return redirect()->back();
        }
    
        public function editar(Request $req){
            $filme = Filmes::find($req->id);
            return view('editar')->with("filmes", $filme);
        }
    
        public function atualizar(Request $req){
            $filme = Filmes::find($req->id);
            if ($req->hasFile('capa') && $req->file('capa')->isValid()) {
                $filme->capa = $req->capa->store('capas', 'public');}
            $filme->update([
                     "titulo" => $req->titulo,
                     "subtitulo" => $req->subtitulo,
                     "anolanc "=> $req-> anolanc,
                     "duracao" => $req->duracao,
                     "classi" => $req->classi,
                     "genero" => $req->genero,
                     "pontuacao" => $req->pontuacao,
                     "diretor" => $req->diretor,
                     "sinopse"=> $req->sinopse,
                     "capa"=> $filme->capa
             ]); 
        
            return redirect('/listar');
        }
        public function  excluir(Request $req){
            $filme = Filmes::find($req->id) ;
            $filme->delete();
            return redirect()->back();
            
        }
        public function listar(Request $req){
            $filmes = Filmes::all();
            return view('listar')->with("filmes", $filmes); 
     }
}
