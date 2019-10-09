<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="Entidades.SugestaoProduto"%>
<%@ page import="uniara.servlet.Sugestoes"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	List eList = (List) session.getAttribute("slista");
	request.setAttribute("eList", eList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sugestões</title>
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


<jsp:useBean id="produtos" class="Entidades.SugestaoProduto"
	scope="request" />
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
					<li class="nav-item"><a class="nav-link" value="sugestoes"
						href="/ecommerce/sugestoes">Sugestões</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="col-lg-12">
		<form action="http://localhost:8080/ecommerce/produtos" method="get">
			<h1>Sugestão Produtos</h1>
			<table class="table table-striped">
				<thead>
					<th>Personagem</th>
					<th>Tamanho</th>
				</thead>
				<tbody>
					<c:forEach items="${slista}" var="sugestao">
						<tr>
							<td><c:out value="${sugestao.nome}" /></td>
							<td><c:out value="${sugestao.tamanho}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</form>
	</div>
</body>
</html>