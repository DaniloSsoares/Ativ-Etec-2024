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
            $table->string("anolanc");
            $table->string("duracao");
            $table->string("classi");
            $table->string("genero");
            $table->string("pontuacao");
            $table->string("diretor");
            $table->string("sinopse");
            $table->string("capa");
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
