
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="manifest" href="/site.webmanifest">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#0ed3cf">
    <meta name="msapplication-TileColor" content="#0ed3cf">
    <meta name="theme-color" content="#0ed3cf">

    <meta property="og:image" content="https://tailwindcomponents.com/storage/5296/conversions/temp27683-ogimage.jpg?v=2024-05-15 12:53:09" />
    <meta property="og:image:width" content="1280" />
    <meta property="og:image:height" content="640" />
    <meta property="og:image:type" content="image/png" />

    <meta property="og:url" content="https://tailwindcomponents.com/component/responsive-contact-form-2-light-mode/landing" />
    <meta property="og:title" content="Responsive Contact Form #2 - Light Mode by Angel Morgal" />
    <meta property="og:description" content="Responsive Contact Form #2 - Light Mode" />

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@TwComponents" />
    <meta name="twitter:title" content="Responsive Contact Form #2 - Light Mode by Angel Morgal" />
    <meta name="twitter:description" content="Responsive Contact Form #2 - Light Mode" />
    <meta name="twitter:image" content="https://tailwindcomponents.com/storage/5296/conversions/temp27683-ogimage.jpg?v=2024-05-15 12:53:09" />

    <link rel="canonical" href="https://tailwindcomponents.com/component/responsive-contact-form-2-light-mode" itemprop="URL">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>
    
    <title>Tela de Cadastro </title>

            <script src="https://cdn.tailwindcss.com"></script>
    </head>
<body class="bg-gray-200">


    <!--Nav Bar-->
    <nav>
        <div class="mx-auto max-w-1xl px-1 sm:px-6 lg:px-3 bg-blue-800 ">
            <div class="flex h-16 items-center justify-between">
                <div class="flex items-center">
                    <div class="flex-shrink-0">
                        <div class="hidden md:block">
                            <div class="ml-10 flex items-baseline space-x-4">
                            <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                            <a href="#" id="HomeNa" class="text-violet-100  hover:text-rose-500 rounded-md px-3 py-2 text-lg  font-medium">Home</a>
                            <a href="#" id="CadastrarNa"class="text-violet-100  hover:text-rose-500 rounded-md px-3 py-2 text-lg  font-medium">Cadastrar</a>
                            <a href="#" id="ListarNa" class="text-violet-100  hover:text-rose-500 rounded-md px-3 py-2 text-lg  font-medium">Listar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
  

   <!-- <div class="fixed bottom-0 left-0 right-0 z-40 px-4 py-3 text-center text-white bg-gray-800">
        <a class="text-gray-200 underline" href="https://tailwindcomponents.com/component/responsive-contact-form-2-light-mode">Component details</a>
    </div>-->
    <div class="w-full">
    <div class="bg-gradient-to-b from-blue-800 to-blue-600 h-96"></div>
    <div class="max-w-5xl mx-auto px-6 sm:px-6 lg:px-8 mb-12">
        <div class="bg-white w-full shadow rounded p-8 sm:p-12 -mt-72">
            <p class="text-3xl font-bold leading-7 text-center">Cadastar</p>
            <form method="POST" action="/adicionarContato" enctype="multipart/form-data">
                @csrf
                <div class="md:flex items-center mt-12">
                    <div class="w-full md:w-1/2 flex flex-col">
                        <label class="font-semibold leading-none">Título</label>
                        <input type="text" name="titulo" placeholder="Título" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200" />
                    </div>
                    <div class="w-full md:w-1/2 flex flex-col md:ml-6 md:mt-0 mt-4">
                        <label class="font-semibold leading-none">Subtitulo</label>
                        <input type="text" name="subtitulo" placeholder="subtitulo" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200"/>
                    </div>
                </div>
                <div class="md:flex items-center mt-12">
                    <div class="w-full md:w-1/2 flex flex-col">
                        <label class="font-semibold leading-none">Lançamento</label>
                        <input type="text" name="anolanc" placeholder="Ex: 2024" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200" />
                    </div>
                    <div class="w-full md:w-1/2 flex flex-col md:ml-6 md:mt-0 mt-4">
                        <label class="font-semibold leading-none">Duração</label>
                        <input type="text" name="duracao" placeholder="Ex: 1h 1m" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200"/>
                    </div>
                </div>
                <div class="md:flex items-center mt-12">
                    <div class="w-full md:w-1/2 flex flex-col">
                        <label class="font-semibold leading-none">Classificação</label>
                        <input type="text" name="classi" placeholder="Ex: A10" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200" />
                    </div>
                    <div class="w-full md:w-1/2 flex flex-col md:ml-6 md:mt-0 mt-4">
                        <label class="font-semibold leading-none">Gênero cinematográfico</label>
                        <input type="text" name="genero" placeholder="ficção" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200"/>
                    </div>
                </div>
                <div class="md:flex items-center mt-12">
                    <div class="w-full md:w-1/2 flex flex-col">
                        <label class="font-semibold leading-none">Pontuação</label>
                        <input type="text" name="pontuacao" placeholder="Ex: 4,2" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200" />
                    </div>
                    <div class="w-full md:w-1/2 flex flex-col md:ml-6 md:mt-0 mt-4">
                        <label class="font-semibold leading-none">Diretor</label>
                        <input type="text" name="diretor" placeholder="Nome do Diretor" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200"/>
                    </div>
                </div>
                <div class="md:flex items-center mt-12">
                        <div class="w-full flex flex-col">
                            <label class="font-semibold leading-none">Sinopse</label>
                            <input type="text" name="sinopse" placeholder="Sinopse" class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200"/>
                        </div>
                    </div>
                    <div class="w-full md:w-1/2 flex flex-col md:ml-6 md:mt-0 mt-4">
                        <label class="font-semibold leading-none">Capa</label>
                        <input type="file" name="capa"  class="leading-none text-gray-900 p-3 focus:outline-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200"/>
                    </div>
                </div>
                
                <div class="flex items-center justify-center w-full">
                <button type="submit" class="mt-9 font-semibold leading-none text-white py-4 px-10 bg-blue-700 rounded hover:bg-blue-600 focus:ring-2 focus:ring-offset-2 focus:ring-blue-700 focus:outline-none">
                        Confirmar
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="container mt-5">
    <div class="table-responsive">
        <table class="table table-bordered border-primary">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Título</th>
                    <th scope="col">Subtítulo</th>
                    <th scope="col">Ano de lançamento</th>
                    <th scope="col">Duração</th>
                    <th scope="col">Classificação</th>
                    <th scope="col">Gênero</th>
                    <th scope="col">Pontuação</th>
                    <th scope="col">Diretor</th>
                    <th scope="col">sinopse</th>
                    <th scope="col">Capa</th>
                    <th scope="col">Ações</th>
                </tr>
            </thead>
            <tbody>
                @if (count($filmes) > 0)
                    @foreach ($filmes as $fil)
                        <tr>
                            <td>{{ $fil->id }}</td>
                            <td>{{ $fil->titulo }}</td>
                            <td>{{ $fil->subtitulo }}</td>
                            <td>{{ $fil->anolanc }}</td>
                            <td>{{ $fil->duracao }}</td>
                            <td>{{ $fil->classi }}</td>
                            <td>{{ $fil->genero }}</td>
                            <td>{{ $fil->pontuacao }}</td>
                            <td>{{ $fil->diretor }}</td>
                            <td>{{ $fil->sinopse }}</td>
                            <td>
                                   @if ($fil->capa)
                                       <img src="{{ asset('storage/' . $fil->capa) }}" alt="Capa do filme" style="width: 100px; height: auto;">
                                   @else
                                       <p>Sem capa</p>
                                   @endif
                            </td>
                            <td>
                                <a href="/editar/{{ $fil->id }}" class="btn btn-primary">Editar</a>
                                <a href="/excluir/{{ $fil->id }}" class="btn btn-danger">Excluir</a>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="9">Sem registros!</td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
</div>



    <script>

    document.getElementById('HomeNa').addEventListener('click', function(){
       window.location.href='/';
       })
    document.getElementById('CadastrarNa').addEventListener('click', function(){
    window.location.href='/cadastrar';
    })

    document.getElementById('ListarNa').addEventListener('click', function(){
    window.location.href='/listar';
    })

   
</script>

</body>
</html>