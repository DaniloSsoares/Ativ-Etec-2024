<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Adicione o CSS dos Ícones do Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

</head>

<body>

<!--Nav Bar-->
<nav class="navbar navbar-expand-lg bg-black">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" id="CadastrarNa" href="#">Cadastrar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" id="AtualizarNa" href="#">Atualizar</a>
        </li><li class="nav-item">
          <a class="nav-link text-white" id="DeletarNa" href="#">Deletar</a>
      
          <li class="nav-item">
          <a class="nav-link text-white" id="ListarNa" href="#">Listar</a>
        </li><li class="nav-item">
         
      
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators mt-10">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/img5.jpg" class="d-block h-50 w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/img6.jpg" class="d-block h-50 w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/7.jpg" class="d-block h-50 w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/img1.jpg" class="d-block h-50 w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/imh2.jpg" class="d-block h-50 w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<div class=" row row-cols-1 row-cols-md-3 g-4  mt-4">
  <div class="col">
    <div class="card">
      <img src="/img/insert.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Cadastrar</h5>
        <p class="card-text">Área de realização de cadastro.</p>
        <button id="Cadastrar" class="btn btn-outline-success" type="submit">Cadastro</button>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="/img/update.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Update</h5>
        <p class="card-text">Área de realização de atualização.</p>
        <button class="btn btn-outline-warning" id="Atualizar" type="submit">Atualização</button>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="img/delete.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Delete</h5>
        <p class="card-text">Área de delete.</p>
        <button class="btn btn-outline-danger" id="Deletar" type="submit">Delete</button>
      </div>
    </div>

  </div>
  <div class="col">
    <div class="card">
      <img src="img/delete.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Listar</h5>
        <p class="card-text">Área de Listagem.</p>
        <button class="btn btn-outline-info" id="Listar" type="submit">Listar</button>
      </div>
    </div>
    </div>
  </div>
</div>


<footer class="bg-dark text-center text-white py-3">
    <div class="container">
        <p class="mb-0">Meu Primeiro Footer com Bootstrap © 2024</p>
        <p class="mb-0">Siga-nos nas redes sociais</p>
        <a href="#" class="text-white me-2">
            <i class="bi bi-facebook"></i>
        </a>
        <a href="#" class="text-white me-2">
            <i class="bi bi-twitter"></i>
        </a>
        <a href="#" class="text-white me-2">
            <i class="bi bi-instagram"></i>
        </a>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
['Cadastrar', 'CadastrarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () => window.location.href='/cadastrar'));

    ['Atualizar', 'AtualizarNa'].forEach(id =>document.getElementById(id)?.addEventListener('click',() => window.location.href='/atualizar'
    ));

   ['Deletar','DeletarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () =>window.location.href='/deletar'
   ));
   
   ['Listar','ListarNa'].forEach(id => document.getElementById(id)?.addEventListener('click', () =>window.location.href='/Listar'
   ));
</script>

</body>

</html>