<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Login</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />
</head>

<style>
    body {
        background-color:darkgrey;
    }
</style>

<body>

	<div class="container" >
            <br>
            <br>
        <form class="col-md-6 offset-md-3 jumbotron" action="/login.action" method="POST">
        
            <h3>Login</h3>
            
            <div class="form-group">
                <label for="exampleInputEmail1">Nome:</label>
                <input type="text" class="form-control" name="nome" placeholder="Nome">
            </div>
            
            <div class="form-group">
                <label for="exampleInputPassword1">Senha:</label>
                <input type="password" class="form-control" name="senha" placeholder="Senha">
            </div>
            
            <center>
                <button class="btn btn-primary" type="submit" href="">Login</button>
            </center>
            
            <br>
            
            <center>
                <a class="mt-5" href="/jsp/cadastro.jsp">Cadastre-se</a>
            </center>
	</form>
	</div>
</body>
</html>