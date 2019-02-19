package com.miw.peliculas.webservices;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import javax.jws.WebService;


@WebService(endpointInterface="com.miw.peliculas.webservices.IComparadorWS")
public class ComparadorWS implements IComparadorWS
{
	private static List<String> peliculas;
	public Map<String, Double> comparacion;
	
	public enum Comercio
	{
		NETFLIX, AMAZON, CARREFOUR, ALCAMPO,
		TUVIDEOCLUB, FNAC, MEDIAMARKT
	}
	
	public ComparadorWS()
	{
		peliculas = new ArrayList<String>();
		peliculas.add("El silencio de los corderos");
		peliculas.add("Star Wars III");
		peliculas.add("Rocky");
		peliculas.add("Rocky II");
		peliculas.add("El señor de los anillos");
		peliculas.add("El señor de los anillos I");
		peliculas.add("El señor de los anillos II");
		peliculas.add(("El señor de los anillos III"));
		comparacion = new HashMap();
	}
	
	public String[] comparar(String titulo) {
		
		if (peliculas.contains(titulo)) {
			for (Comercio c: Comercio.values()) {
				comparacion.put(c.toString(), calcularPrecio());
			}
		}
		return (String[])comparacion.keySet().toArray(new String[0]);
	}
	
	public double calcularPrecio() {
		
		Random r = new Random();
        double precio = Math.floor(5 + (15 - 5) * r.nextDouble());
        return precio;
	}

}
