<%@page import="com.miw.peliculas.client.ComparadorWSClient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./styles/style.css" rel="stylesheet" type="text/css">
<title>Peliculas</title>
</head>
<body>

	<header>
	<h1>Peliculas</h1>
	</header>


	<form method="get">
		<input type="submit" value="Comparar" class="button compararButton" />
	</form>


	<h1>Result</h1>

	<%
		String netflixVendedor = ComparadorWSClient.comparar().get(0).getVendedor();
	%>
	<%
		double netflixPrecio = ComparadorWSClient.comparar().get(0).getPrecio();
	%>
	<%
		String amazonVendedor = ComparadorWSClient.comparar().get(1).getVendedor();
	%>
	<%
		double amazonPrecio = ComparadorWSClient.comparar().get(1).getPrecio();
	%>
	<%
		String carrefourVendedor = ComparadorWSClient.comparar().get(2).getVendedor();
	%>
	<%
		double carrefourPrecio = ComparadorWSClient.comparar().get(2).getPrecio();
	%>
	<%
		String alcampoVendedor = ComparadorWSClient.comparar().get(3).getVendedor();
	%>
	<%
		double alcampoPrecio = ComparadorWSClient.comparar().get(3).getPrecio();
	%>
	<%
		String tuvideoclubVendedor = ComparadorWSClient.comparar().get(4).getVendedor();
	%>
	<%
		double tuvideoclubPrecio = ComparadorWSClient.comparar().get(4).getPrecio();
	%>
	<%
		String fnacVendedor = ComparadorWSClient.comparar().get(5).getVendedor();
	%>
	<%
		double fnacPrecio = ComparadorWSClient.comparar().get(5).getPrecio();
	%>
	<%
		String mediamarktVendedor = ComparadorWSClient.comparar().get(6).getVendedor();
	%>
	<%
		double mediamarktPrecio = ComparadorWSClient.comparar().get(6).getPrecio();
	%>


	<p>Comparacion de precios:</p>
	<ul class="listaPrecios">
		<li class="netflix"><%=netflixVendedor%> <%=netflixPrecio%>&euro;</li>
		<li class="amazon"><%=amazonVendedor%> <%=amazonPrecio%>&euro;</li>
		<img src="./images/carrefour_icon.png" alt="icono carrefour" style="float:left"> <li class="carrefour"> <%=carrefourVendedor%> <%=carrefourPrecio%>&euro;</li>
		<li><%=alcampoVendedor%> <%=alcampoPrecio%>&euro;</li>
		<li><%=tuvideoclubVendedor%> <%=tuvideoclubPrecio%>&euro;</li>
		<li><%=fnacVendedor%> <%=fnacPrecio%>&euro;</li>
		<li><%=mediamarktVendedor%> <%=mediamarktPrecio%>&euro;</li>
	</ul>


</body>
</html>