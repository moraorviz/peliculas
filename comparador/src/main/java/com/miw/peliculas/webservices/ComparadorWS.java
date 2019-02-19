package com.miw.peliculas.webservices;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.jws.WebService;

@WebService(endpointInterface="com.miw.peliculas.webservices.IComparadorWS")
public class ComparadorWS implements IComparadorWS
{
	private static List<Pelicula> peliculas;
	public List<Comparacion> comparacion;
	
	public enum Comercio
	{
		NETFLIX, AMAZON, CARREFOUR, ALCAMPO,
		TUVIDEOCLUB, FNAC, MEDIAMARKT
	}
	
	public ComparadorWS()
	{
		peliculas = new ArrayList<Pelicula>();
		peliculas.add(new Pelicula("001", "El silencio de los corderos"));
		peliculas.add(new Pelicula("002", "Star Wars III"));
		peliculas.add(new Pelicula("003", "Rocky"));
		peliculas.add(new Pelicula("004", "Rocky II"));
		peliculas.add(new Pelicula("005", "El señor de los anillos"));
		peliculas.add(new Pelicula("006", "El señor de los anillos I"));
		peliculas.add(new Pelicula("007", "El señor de los anillos II"));
		peliculas.add(new Pelicula("008", "El señor de los anillos III"));
		comparacion = new ArrayList<Comparacion>();
	}
	
	public String[] comparar(String titulo) {
		
		if (peliculas.contains(titulo)) {
			for (Comercio c: Comercio.values()) {
				comparacion.add(new Comparacion(c.toString(), calcularPrecio()));
			}
		}
		//return (String[])comparacion.keySet().toArray(new String[0]);
		return null;
	}
	
	public double calcularPrecio() {
		
		Random r = new Random();
        double precio = Math.floor(5 + (15 - 5) * r.nextDouble());
        return precio;
	}

}
