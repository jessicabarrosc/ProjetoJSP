<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%
	List eList = (List) session.getAttribute("produtos");
	request.setAttribute("eList", eList);
%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="ption" content="">
<meta name="author" content="">

<title>Marvelsetas</title>

<!-- Bootstrap core CSS -->
<link href="theme/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="theme/css/shop-homepage.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
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
					<li class="nav-item active"><a class="nav-link" href="/ecommerce/produtos">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" value="cadastrar" href="/ecommerce/CadastrarSugestao.jsp">Cadastrar Sugestão</a></li>
					<li class="nav-item"><a class="nav-link" value="lista" href="/ecommerce/sugestoes">Sugestões</a></li>
				</ul>
			</div>
		</div>
	</nav>



	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-12">

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel"></div>

				<div class="row">
					<c:forEach items="${produtos}" var="produto">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="/ecommerce/produto?id=${produto.id}">
								<img class="card-img-top" src="/ecommerce/imagens/${produto.id}.jpg" alt=""></a>
								<div class="card-body">
									<h4 class="card-title">
										<a href="/ecommerce/produto?id=${produto.id}">
										<c:out value="${produto.nome}" /></a>
									</h4>
									<h5>
										R$
										<c:out value="${produto.preco}" />
									</h5>
									<p class="card-text">
									
									</p>
									
								</div>

							</div>
						</div>
					</c:forEach>
				</div>

			</div>
			<!-- /.row -->

		</div>
		<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-danger">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="theme/vendor/jquery/jquery.min.js"></script>
	<script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
