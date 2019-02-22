<%@page import="com.miw.peliculas.client.ComparadorWSClient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./styles/style.css" rel="stylesheet" type="text/css">
<title> Peliculas </title>
</head>
<body>

	<header>
	<h1>Películas</h1>
	</header>
	
	<div id="compararButton">
	  <form method="get">  
	    <input type="submit" value="Comparar"/>
	  </form>
	 </div>
  
	<h1>Result</h1>
	
  		<% String netflixVendedor = ComparadorWSClient.comparar().get(0).getVendedor(); %>
  		<% double netflixPrecio = ComparadorWSClient.comparar().get(0).getPrecio(); %>		
		
  		<%= netflixVendedor %>
  		<%= netflixPrecio %>   		
  		
  		
</body>
</html>