<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>
    <title>Atualizar</title>
    
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
         
        <li class="nav-item">
          <a class="nav-link text-white" id="EditarNa" href="#">Editar</a>
        </li><li class="nav-item"> 

      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>''


<div class="container mt-5">
        <form method="POST" action="/atualizar">
            @csrf
            <div class="form-group mb-2">
                <label for="exampleInputEmail1">Nome:</label>
                <input type="text" class="form-control" name="name" placeholder="Nome">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Endereço</label>
                <input type="text" class="form-control" name="endereco" placeholder="Endereço">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Bairro</label>
                <input type="text" class="form-control" name="bairro" placeholder="Bairro">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Cep</label>
                <input type="text" class="form-control" name="cep" placeholder="Cep">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Telefone</label>
                <input type="text" class="form-control" name="telefone" placeholder="Telefone">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Estado</label>
                <input type="text" class="form-control" name="estado" placeholder="Estado">
            </div>
            <div class="form-group mb-2">
                <label for="exampleInputPassword1">Ação</label>
                <input type="text" class="form-control" name="acao" placeholder="Ação">
            </div>
            <button type="submit" class="btn btn-primary center">Cadastrar</button>
        </form>
    </div>

<script>
    document.getElementById('Cadastrar').addEventListener('click', function(){
    window.location.href='/cadastrar';
    })

    document.getElementById('Atualizar').addEventListener('click', function(){
    window.location.href='/atualizar';
    })

    document.getElementById('Deletar').addEventListener('click', function(){
    window.location.href='/deletar';
    })
    document.getElementById('Editar').addEventListener('click', function(){
    window.location.href='/editar';
    })
    
    document.getElementById('Editar').addEventListener('click', function(){
    window.location.href='/editar';
    })
</script>

</body>
</html>