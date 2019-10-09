<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Sugestões</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="theme/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="theme/css/shop-homepage.css" rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">MARVELsetas</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto" name="page">
					<li class="nav-item active"><a class="nav-link"
						href="/ecommerce/produtos">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" value="cadastrar"
						href="/ecommerce/CadastrarSugestao.jsp">Cadastrar Sugestão</a></li>
					<li class="nav-item"><a class="nav-link" value="lista"
						href="/ecommerce/Sugestoes.jsp">Sugestões</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="col-lg-12">
		<h1>Cadastro</h1>
		<form action="/ecommerce/sugestoes" method="post">
			<div class="form-group">
				<input type="text" name="nome" class="form-control" placeholder="Digite o nome" />			
			</div>
						<div class="form-group">
				<input type="text" name="tamanho" class="form-control" placeholder="Digite o tamanho" />			
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-success">Cadastrar</button>
			</div>
		</form>
	</div>

</body>
</html>