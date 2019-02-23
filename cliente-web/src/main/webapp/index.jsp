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
		<input type="submit" value="Comparar" class="button compararButton" onclick="mostrar()" />
	</form>
	
		<p>Resultado:</p>
	<p class="flip" onclick="mostrar()">Click to show panel</p>


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



	<div id="panel">
	<ul class="listaPrecios">
		
		<img style="float: left;" src="./images/netflix_icon.png" alt="icono netflix"
			style="float: left">
		
		<li class="netflix"><%=netflixVendedor%> <%=netflixPrecio%>&euro;</li>
		<img src="./images/amazon_icon.png" alt="icono carrefour"
			style="float: left">
		<li class="amazon"><%=amazonVendedor%> <%=amazonPrecio%>&euro;</li>
		<img src="./images/carrefour_icon.png" alt="icono amazon"
			style="float: left">
		<li class="carrefour"><%=carrefourVendedor%> <%=carrefourPrecio%>&euro;</li>
		<img src="./images/alcampo_icon.png" alt="icono alcampo"
			style="float: left">
		<li class="alcampo"><%=alcampoVendedor%> <%=alcampoPrecio%>&euro;</li>
		<img src="./images/videoclub_icon.png" alt="icono videoclub"
			style="float: left">
		<li class="tuvideoclub"><%=tuvideoclubVendedor%> <%=tuvideoclubPrecio%>&euro;</li>
		<img src="./images/fnac_icon.png" alt="icono fnac"
			style="float: left">
		<li class="fnac"><%=fnacVendedor%> <%=fnacPrecio%>&euro;</li>
		<img src="./images/mediamarkt_icon.jpg" alt="icono mediamarkt"
			style="float: left">
		<li class="mediamarkt"><%=mediamarktVendedor%> <%=mediamarktPrecio%>&euro;</li>
	</ul>
	</div>

<script>
function mostrar() {
  document.getElementById("panel").style.display = "inline";
}
</script>
</body>
</html>