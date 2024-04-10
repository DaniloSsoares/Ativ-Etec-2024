<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Listar</title>
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
          <a class="nav-link active text-white" id="HomeNa" aria-current="page" href="#">Home</a>
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
</nav>
<div class="container mt-5">
    <div class="table-responsive">
        <table class="table table-bordered border-primary">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Endereço</th>
                    <th scope="col">Bairro</th>
                    <th scope="col">Cep</th>
                    <th scope="col">Telefone</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Ação</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($contatos as $c)
<tr>
    <th scope="row">{{ $loop->iteration }}</th>
    <td>{{ $c->name }}</td>
    <td>{{ $c->endereco }}</td>
    <td>{{ $c->bairro }}</td>
    <td>{{ $c->cep }}</td>
    <td>{{ $c->telefone }}</td>
    <td>{{ $c->estado }}</td>
    <td>{{ $c->acao }}</td>
</tr>
@endforeach
            </tbody>
        </table>
    </div>
</div>


<script>
    document.getElementById('CadastrarNa').addEventListener('click', function(){
    window.location.href='/cadastrar';
    })

    document.getElementById('AtualizarNa').addEventListener('click', function(){
    window.location.href='/atualizar';
    })

    document.getElementById('DeletarNa').addEventListener('click', function(){
    window.location.href='/deletar';
    })
    document.getElementById('ListarNa').addEventListener('click', function(){
    window.location.href='/Listar';
    })
    document.getElementById('HomeNa').addEventListener('click', function(){
    window.location.href='/';
    
    document.getElementById('Editar').addEventListener('click', function(){
    window.location.href='/editar';
    })
    })
</script>
</body>
</html>