package com.miw.peliculas.webservices;

public class Pelicula
{	
	private String peliculaCode;
	private String titulo;
	
	public Pelicula(String peliculaCode, String titulo)
	{
		this.peliculaCode = peliculaCode;
		this.titulo = titulo;
	}
	
	public String getPeliculaCode()
	{
		return this.peliculaCode;
	}
	
	public void setPeliculaCode(String peliculaCode)
	{
		this.peliculaCode = peliculaCode;
	}
	
	public String getTitulo()
	{
		return this.titulo;
	}
	
	public void setTitulo(String titulo)
	{
		this.titulo = titulo;
	}
}
