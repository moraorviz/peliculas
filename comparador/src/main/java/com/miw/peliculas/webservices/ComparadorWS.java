package com.miw.peliculas.webservices;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.jws.WebService;


@WebService(endpointInterface="com.miw.peliculas.webservices.IComparadorWS")
public class ComparadorWS implements IComparadorWS
{
	private static List<String> peliculas;
	private static Map<String, Double> comparacion;
	
	public enum Comercios
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
	}
	
	@Override
	public String[] comparar() {
		
		
		return null;
	}

}
