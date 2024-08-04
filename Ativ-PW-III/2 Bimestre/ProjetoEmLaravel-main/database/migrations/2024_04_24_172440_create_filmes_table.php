<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('filmes', function (Blueprint $table) {
            $table->id();
            $table->string("titulo");
            $table->string("subtitulo");
            $table->date("anolanc");
            $table->time("duracao");
            $table->string("classi");
            $table->string("genero");
            $table->float("pontuacao");
            $table->string("diretor");
            $table->TEXT("sinopse");
            $table->TEXT("capa");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('filmes');
    }
};
