package com.miw.peliculas.listado.client;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class InfoPelicula {
	
	@JsonProperty("Title")
	private String Title;
	
	
	
	public InfoPelicula() {
		
	}
	
	public InfoPelicula(String Title) {
		this.Title = Title;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}
	
	
	
}