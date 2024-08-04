<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class adicionarRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'titulo' => 'required|string|max:255|',
            'subtitulo' => 'required|string|max:255',
            'anolanc' => 'required|String|max:' . date('Y'),
            'duracao' => 'required|string|max:300',
            'classi' => 'required|string|max:255',
            'genero' => 'required|string|max:255',
            'pontuacao' => 'required|numeric|min:1|max:10',
            'diretor' => 'required|string|max:255',
            'sinopse' => 'required|string|max:255',
        ];
    }
}
