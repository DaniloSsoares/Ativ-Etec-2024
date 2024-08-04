
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
                        <div class="md:block">
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
  

    <div class="w-full">
      <div class="bg-gradient-to-b from-blue-800 to-blue-600 h-96"></div>
      <div class="max-w-5xl mx-auto px-6 sm:px-6 lg:px-8 mb-12">
        <div class="bg-white w-full shadow rounded p-8 sm:p-12 -mt-72">
            <p class="text-3xl font-bold leading-7 text-center">Listar</p>
            <div class="container mt-5">
              <div class="table-responsive">
                @if (count($filmes) > 0)
                  @foreach ($filmes as $fill)
                    <article class="flex items-start space-x-6 p-6">
                        <img src="{{ asset('storage/' . $fill->capa) }}" alt="" width="60" height="88" class="flex-none rounded-md bg-slate-100" />
                        <div class="min-w-0 relative flex-auto">
                          <h2 class="font-semibold text-slate-900 truncate pr-20">{{ $fill->titulo }}</h2>
                          <dl class="mt-2 flex flex-wrap text-sm leading-6 font-medium">
                            <div class="absolute top-0 right-0 flex items-center space-x-1">
                              <dt class="text-sky-500">
                                  <span class="sr-only">Star rating</span>
                                  <svg width="16" height="20" fill="currentColor">
                                  <path d="M7.05 3.691c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.372 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.539 1.118l-2.8-2.034a1 1 0 00-1.176 0l-2.8 2.034c-.783.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.363-1.118L.98 9.483c-.784-.57-.381-1.81.587-1.81H5.03a1 1 0 00.95-.69L7.05 3.69z" />
                                  </svg>
                              </dt>
                              <dd>{{ $fill->pontuacao }}</dd>
                            </div>
                            <div>
                              <dt class="sr-only">Classi</dt>
                              <dd class="px-1.5 ring-1 ring-slate-400 rounded">{{ $fill->classi }}</dd>
                            </div>
                            <div class="ml-2">
                              <dt class="sr-only">Ano</dt>
                              <dd>{{ $fill->anolanc }}</dd>
                            </div>
                            <div>
                            <dt class="sr-only">Genero</dt>
                            <dd class="flex items-center">
                                <svg width="2" height="2" fill="currentColor" class="mx-2 text-slate-400" aria-hidden="true">
                                <circle cx="1" cy="1" r="1" />
                                </svg>
                                {{ $fill->genero }}
                            </dd>
                            </div>
                            <div>
                            <dt class="sr-only">Duracao</dt>
                            <dd class="flex items-center">
                                <svg width="2" height="2" fill="currentColor" class="mx-2 text-slate-400" aria-hidden="true">
                                <circle cx="1" cy="1" r="1" />
                                </svg>
                                {{ $fill->duracao }}
                            </dd>
                            </div>
                            <div class="flex-none w-full mt-2 font-normal">
                              <dt class="sr-only">Diretor</dt>
                              <dd class="text-slate-400">{{ $fill->diretor }}</dd>
                            </div>
                          </dl>
                          <div>
                                  <a href="/editar/{{ $fill->id }}" class="btn btn-primary">Editar</a>
                                  <a href="/excluir/{{ $fill->id }}" class="btn btn-danger">Excluir</a>
                          </div>
                      </div>
                  </article>
                  @endforeach
                @else
                    <tr>
                        <td colspan="9">Sem registros!</td>
                    </tr>
                @endif
              </div>
            </div>
          </div>
        </div>
    </div>





    <script>

    ['Home', 'HomeNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href='/'));

    ['Listar', 'ListarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href='/listar'));

    document.getElementById('CadastrarNa').addEventListener('click', function(){
    window.location.href='/cadastrar'
    })

    document.getElementById('AtualizarNa').addEventListener('click', function(){
    window.location.href='/atualizar';
    })

    document.getElementById('DeletarNa').addEventListener('click', function(){
    window.location.href='/deletar';
    })

    document.getElementById('HomeNa').addEventListener('click', function(){
    window.location.href='/';
    })
</script>

</body>
</html>