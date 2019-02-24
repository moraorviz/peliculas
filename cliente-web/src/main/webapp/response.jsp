<%@page import="com.miw.peliculas.client.ComparadorWSClient"%>
<%@page import="com.miw.peliculas.webservices.Comparacion"%>
<%@page import="com.miw.peliculas.listado.client.PelisClient"%>
<%@page import="com.miw.peliculas.listado.client.InfoPelicula"%>
<%@page import="java.util.List"%>

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

<%
	int id = Integer.parseInt(request.getParameter("peliculas"));
%>

<%
	PelisClient pelisClient = new PelisClient();
	InfoPelicula infoPelicula = pelisClient.getJsonDetallesPeli(id);
%>

<h1>
	<%=infoPelicula.getTitle()%></h1>

<h2>
	<font color="black">Comparacion de precios </font>
</h2>


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




<h2>Informacion</h2>
Calificacion:
<%=infoPelicula.getCalificacion()%>
Duracion:
<%=infoPelicula.getDuracion()%>
Fecha de salida:
<%=infoPelicula.getYear()%>
Pais:
<%=infoPelicula.getPais()%>
<h2>Reparto</h2>
<%=infoPelicula.getReparto()%>
<h2>Sinopsis</h2>
<p>
	<%=infoPelicula.getSinopsis()%>
</p>