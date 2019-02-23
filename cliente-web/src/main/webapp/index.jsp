<%@page import="com.miw.peliculas.client.ComparadorWSClient"%>
<%@page import="com.miw.peliculas.webservices.Comparacion"%>
<%@page import="java.util.List"%>
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

	<%
		List<Comparacion> comparacionArray = ComparadorWSClient.comparar();
		String netflixVendedor = comparacionArray.get(0).getVendedor();
		double netflixPrecio = comparacionArray.get(0).getPrecio();
		String amazonVendedor = comparacionArray.get(1).getVendedor();
		double amazonPrecio = comparacionArray.get(1).getPrecio();
		String carrefourVendedor = comparacionArray.get(2).getVendedor();
		double carrefourPrecio = comparacionArray.get(2).getPrecio();
		String alcampoVendedor = comparacionArray.get(3).getVendedor();
		double alcampoPrecio = comparacionArray.get(3).getPrecio();
		String tuvideoclubVendedor = comparacionArray.get(4).getVendedor();
		double tuvideoclubPrecio = comparacionArray.get(4).getPrecio();
		String fnacVendedor = comparacionArray.get(5).getVendedor();
		double fnacPrecio = comparacionArray.get(5).getPrecio();
		String mediamarktVendedor = comparacionArray.get(6).getVendedor();	
		double mediamarktPrecio = comparacionArray.get(6).getPrecio();
	%>

	<select>
		<option value="volvo">Volvo</option>
		<option value="saab">Saab</option>
		<option value="mercedes">Mercedes</option>
		<option value="audi">Audi</option>
	</select>

	<ul class="listaPrecios">

		<img style="float: left;" src="./images/netflix_icon.png"
			alt="icono netflix" style="float: left">
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
		<img src="./images/fnac_icon.png" alt="icono fnac" style="float: left">
		<li class="fnac"><%=fnacVendedor%> <%=fnacPrecio%>&euro;</li>
		<img src="./images/mediamarkt_icon.jpg" alt="icono mediamarkt"
			style="float: left">
		<li class="mediamarkt"><%=mediamarktVendedor%> <%=mediamarktPrecio%>&euro;</li>
	</ul>

	<script>
		function mostrar() {
			document.getElementById("panel").style.display = "inline";
		}
	</script>
</body>
</html>