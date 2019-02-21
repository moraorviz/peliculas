package com.miw.peliculas.client;

import java.util.List;

import com.miw.peliculas.webservices.Comparacion;
import com.miw.peliculas.webservices.ComparadorWSService;
import com.miw.peliculas.webservices.IComparadorWS;

// TODO implementar el argumento en la interfaz que permita escoger el tipo 
// de servicio (más en la documentación de la práctica)
public class ComparadorWSClient {
	public static List<Comparacion> comparar() {
		ComparadorWSService service = new ComparadorWSService();
		IComparadorWS comparador = service.getComparadorWSPort();
		return comparador.comparar();
	}
}
