<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Filmes extends Model
{
    use HasFactory;
    protected $fillable = [
        "titulo",
        "subtitulo",
        "anolanc",
        "duracao",
        "classi",
        "genero",
        "pontuacao",
        "diretor",
        "sinopse",
        "capa"
        ];

        public function getCapaUrlAttribute(){
            if($this->capa){
                //Asset usado em laravel para armazernar uma url dentro de uma pasta
                return asset('storage/' . $this->capa);
            }
            return null;
        }
}
