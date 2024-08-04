<!doctype html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/Home.css">
  <link rel="stylesheet" href="/css/Cards.css">
  <link rel="stylesheet" href="/css/Footer.css">
  <link rel="stylesheet" href="/css/Navbar.css">
  <link rel="stylesheet" href="/css/Galeria.css">
  <link rel="stylesheet" href="/css/Cards3D.css">
  <link rel="stylesheet" href="/css/Sobre.css">
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://fonts.googleapis.com/css?family=Mitr|Roboto+Slab|Source+Sans+Pro&display=swap" rel="stylesheet">
  <script src="https://premium-tailwindcomponents.netlify.app/assets/build/js/main.js?id=8c11b7cf78ebea1b5aed"></script>

  <style>

  </style>
</head>

<body>

  <div class="min-h-full">
  <nav>
      <div class="navbar">
        <div class="container nav-container">
            <input class="checkbox" type="checkbox" name="" id="" />
            <div class="hamburger-lines">
              <span class="line line1"></span>
              <span class="line line2"></span>
              <span class="line line3"></span>
            </div>  
          <div class="logo">
            <h1></h1>
          </div>
          <div class="menu-items">
            <li><a href="#" id="HomeNa">Home</a></li>
            <li><a href="#" id="CadastrarNa">Cadastrar</a></li>
            <li><a href="#" id="ListarNa">Listar</a></li>
          </div>
        </div>
      </div>
      <img src="/img/JonhWickCapa.jpg" class=" absolute bottom-0 -mr-40 lg:mr-0 fundo" alt="">
      <img src="/img/JonhWickCapaMobile.jpg" class=" absolute bottom-0 -mr-40 lg:mr-0 fundomobile" alt="">

    </nav>

  <div class="containerHome min-h-full px-6 md:px-12 z-10 flex items-center py-24 xl:py-40 ">
        <div class="lg:w-3/5 xl:w-2/5 flex flex-col items-start relative z-10">
          <h1 class="font-roboto-slab text-4xl sm:text-6xl text-red-400 leading-tight mt-4">Filmes e Séries <br> Para todas as pessoas</h1>
          <div class="max-w-md">
            <p class="font-source-sans-pro text-indigo-500 mt-6 text-lg">A maior plataforma de filmes e séries da atualidade, venha ver com a familia os maiores lançamentos</p>
          </div>
         </div>
             </div>
  </div>

  <!--       BANNER FILMES ----------------------------------------->
  <main class="h-screen w-screen py-6 flex items-center justify-center flex-wrap mt-20">

  

    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&family=Roboto:wght@300&display=swap" rel="stylesheet">
    <div class="Ban">
      <h1 class="chamativo">Principais Filmes</h1>
      <hr class="star-primary"></hr>
      <div class="containercard">
        @if (count($filmes) > 0)
        @foreach ($filmes as $fil)
        <div class="card">
          <figure class="card__thumb">
            <div class="respon">
            <img src="{{$fil->capa_url}}" alt="Picture by Štefan Štefančík" class="card__image">
            </div>
            
            <figcaption class="card__caption">
              <h2 class="card__title"> {{ $fil->titulo }}<br></h2>
              <br>
              <p class="card__snippet">{{ $fil->sinopse }}</p>
              <a href="#" id="ListarNa" class="card__button">Leia Mais</a>
            </figcaption>
          </figure>
        </div>
        @endforeach
        @else
        <tr>
          <td colspan="9" style="border: 1px solid #000; background-color: #fff; padding: 10px; border-radius: 15px;">Sem registros!</td>
        </tr>
        @endif
      </div>

      <!-- Fim BANNER ------------------------------------------------------------------------------->
<br><br><br>
<center>
    <h1 class="chamativo">Filmes de Animação</h1>
    <hr class="star-primary"></hr>

    <main class="page-content">
    <a href="#" alt="Mythrill" >
  <div class="card2">
    <div class="wrapper">
      <img src="/img/Genshin.jpeg" class="cover-image" />
    </div>
   
    <img src="/img/GenshinC.png" class="character" />
  </div>
</a>

<a href="#" alt="Mythrill">
  <div class="card2">
    <div class="wrapper">
      <img src="/img/Hunter.jpg" class="cover-image" />
    </div>
    <img src="/img/HunterC.png" class="character-Hunter" />
  </div>
</a>

<a href="#" alt="Mythrill" >
  <div class="card2">
    <div class="wrapper">
      <img src="/img/Demon.jpg" class="cover-image" />
    </div>
    <img src="/img/KimetsuC.png" class="character" />
  </div>
</a>


</main>
</center>

<br><br>
<div class="sobreNos">
<section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                <h1 class="chamativo">Sobre Nós</h1>
      <hr class="star-primary"></hr>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p class='sobre'>
                        
                    No universo da programação, onde linhas de código são como pinceladas em um quadro em branco, um grupo de mentes inquietas se reuniu em uma missão singular: criar um portal onde os mundos do cinema se desdobram diante dos olhos ávidos dos espectadores. Unidos pela paixão pela tecnologia e pelo cinema, esses programadores embarcaram em uma jornada de criação que transcendeu os limites do virtual.<br /><br />
Os desafios eram muitos. Desde a otimização do streaming para garantir uma reprodução fluida, até a implementação de algoritmos de recomendação que entendessem os gostos individuais de cada usuário. Mas esses obstáculos apenas alimentavam a determinação dos programadores, impulsionando-os a superar limites e alcançar novos patamares de excelência.<br /><br />
Finalmente, após meses de trabalho árduo e dedicação incansável, o site viu a luz do dia. Era mais do que uma simples plataforma de streaming; era um santuário para cinéfilos, um refúgio para os amantes do cinema onde a magia das telonas ganhava vida em pixels e bytes.<br /><br />

Assim, os programadores que criaram esse site para ver filmes não apenas deixaram sua marca no mundo da programação, mas também enriqueceram a vida daqueles que buscam escapar para os reinos da imaginação a cada clique do mouse.                     </p>
                </div>
            </div>
        </div>
        <br /><br /><br />
    </section>
    </div>
<div class="footer">
  <center>
      <div class="cardfooter">
        <img src="/img/wallpapersden.com_k-demon-slayer-kimetsu-no-yaiba-poster-2022_4508x4066.jpg" class="cardfooter__image" alt="brown couch" />
        <div class="cardfooter__content">
          <time datetime="2021-03-30" class="cardfooter__date">28 de Abril de 2024</time>
          <span class="cardfooter__title">Venha conferir as novidades do momento no mundo do cinema<span>
              <p class="promo">Prepare-se para uma jornada inesquecível nas telonas com os lançamentos mais aguardados do ano! Com filmes como Oppenheimer, Velozes e Furiosos 10, Jonh Wick e muito mais!</p>
        </div>
      </div>
</center>

      <footer class="bg-white min-w-full">
        <div class="mx-auto max-w-screen-x3 space-y-8 px-4 py-16 sm:px-6 lg:space-y-16 lg:px-8">
          <div class="grid grid-cols-1 gap-8 lg:grid-cols-3">
            <div>
              <div class="text-teal-600">

              </div>

              <p class="mt-4 max-w-xs text-gray-500">
                Web-site com CRUD desenvolvido em Laravel para obtenção de nota bimestral.
              </p>

              <ul class="mt-8 flex gap-6">
                <li>
                  <a href="#" rel="noreferrer" target="_blank" class="text-gray-700 transition hover:opacity-75">
                    <span class="sr-only">Facebook</span>

                    <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                      <path fill-rule="evenodd" d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z" clip-rule="evenodd" />
                    </svg>
                  </a>
                </li>

                <li>
                  <a href="#" rel="noreferrer" target="_blank" class="text-gray-700 transition hover:opacity-75">
                    <span class="sr-only">Instagram</span>

                    <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                      <path fill-rule="evenodd" d="M12.315 2c2.43 0 2.784.013 3.808.06 1.064.049 1.791.218 2.427.465a4.902 4.902 0 011.772 1.153 4.902 4.902 0 011.153 1.772c.247.636.416 1.363.465 2.427.048 1.067.06 1.407.06 4.123v.08c0 2.643-.012 2.987-.06 4.043-.049 1.064-.218 1.791-.465 2.427a4.902 4.902 0 01-1.153 1.772 4.902 4.902 0 01-1.772 1.153c-.636.247-1.363.416-2.427.465-1.067.048-1.407.06-4.123.06h-.08c-2.643 0-2.987-.012-4.043-.06-1.064-.049-1.791-.218-2.427-.465a4.902 4.902 0 01-1.772-1.153 4.902 4.902 0 01-1.153-1.772c-.247-.636-.416-1.363-.465-2.427-.047-1.024-.06-1.379-.06-3.808v-.63c0-2.43.013-2.784.06-3.808.049-1.064.218-1.791.465-2.427a4.902 4.902 0 011.153-1.772A4.902 4.902 0 015.45 2.525c.636-.247 1.363-.416 2.427-.465C8.901 2.013 9.256 2 11.685 2h.63zm-.081 1.802h-.468c-2.456 0-2.784.011-3.807.058-.975.045-1.504.207-1.857.344-.467.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.047 1.023-.058 1.351-.058 3.807v.468c0 2.456.011 2.784.058 3.807.045.975.207 1.504.344 1.857.182.466.399.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.041.058h.08c2.597 0 2.917-.01 3.96-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.041v-.08c0-2.597-.01-2.917-.058-3.96-.045-.976-.207-1.505-.344-1.858a3.097 3.097 0 00-.748-1.15 3.098 3.098 0 00-1.15-.748c-.353-.137-.882-.3-1.857-.344-1.023-.047-1.351-.058-3.807-.058zM12 6.865a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 1.802a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm5.338-3.205a1.2 1.2 0 110 2.4 1.2 1.2 0 010-2.4z" clip-rule="evenodd" />
                    </svg>
                  </a>
                </li>

                <li>
                  <a href="#" rel="noreferrer" target="_blank" class="text-gray-700 transition hover:opacity-75">
                    <span class="sr-only">Twitter</span>

                    <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                      <path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84" />
                    </svg>
                  </a>
                </li>

                <li>
                  <a href="#" rel="noreferrer" target="_blank" class="text-gray-700 transition hover:opacity-75">
                    <span class="sr-only">GitHub</span>

                    <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                      <path fill-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" clip-rule="evenodd" />
                    </svg>
                  </a>
                </li>

                <li>
                  <a href="#" rel="noreferrer" target="_blank" class="text-gray-700 transition hover:opacity-75">
                    <span class="sr-only">Dribbble</span>

                    <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                      <path fill-rule="evenodd" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10c5.51 0 10-4.48 10-10S17.51 2 12 2zm6.605 4.61a8.502 8.502 0 011.93 5.314c-.281-.054-3.101-.629-5.943-.271-.065-.141-.12-.293-.184-.445a25.416 25.416 0 00-.564-1.236c3.145-1.28 4.577-3.124 4.761-3.362zM12 3.475c2.17 0 4.154.813 5.662 2.148-.152.216-1.443 1.941-4.48 3.08-1.399-2.57-2.95-4.675-3.189-5A8.687 8.687 0 0112 3.475zm-3.633.803a53.896 53.896 0 013.167 4.935c-3.992 1.063-7.517 1.04-7.896 1.04a8.581 8.581 0 014.729-5.975zM3.453 12.01v-.26c.37.01 4.512.065 8.775-1.215.25.477.477.965.694 1.453-.109.033-.228.065-.336.098-4.404 1.42-6.747 5.303-6.942 5.629a8.522 8.522 0 01-2.19-5.705zM12 20.547a8.482 8.482 0 01-5.239-1.8c.152-.315 1.888-3.656 6.703-5.337.022-.01.033-.01.054-.022a35.318 35.318 0 011.823 6.475 8.4 8.4 0 01-3.341.684zm4.761-1.465c-.086-.52-.542-3.015-1.659-6.084 2.679-.423 5.022.271 5.314.369a8.468 8.468 0 01-3.655 5.715z" clip-rule="evenodd" />
                    </svg>
                  </a>
                </li>
              </ul>
            </div>

            <div class="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:col-span-2 lg:grid-cols-4 align">
              <div>
                <p class="font-large text-gray-900">Operações</p>
                <ul class="mt-6 space-y-4 text-sm">
                  <li>
                    <a href="#" class="text-gray-700 transition hover:opacity-75"> Home </a>
                  </li>
                  <li>
                    <a href="#" class="text-gray-700 transition hover:opacity-75"> Listar</a>
                  </li>
                  <li>
                    <a href="#" class="text-gray-700 transition hover:opacity-75"> Cadastar </a>
                  </li>
                </ul>
              </div>

              <p class="text-xs text-gray-500">&copy; Ana, Camilly, Carlos, Daniel, Endrigo. Todos os direitos reservados, 2024.</p>
            </div>
      </footer>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
      <script>
        ['Cadastrar', 'CadastrarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href = '/cadastrar'));

        ['Atualizar', 'AtualizarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href = '/atualizar'));

        ['Editar', 'EditarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href = '/editar'));

        ['Deletar', 'DeletarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href = '/deletar'));

        ['Listar', 'ListarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href = '/listar'));
      </script>
</body>

</html>