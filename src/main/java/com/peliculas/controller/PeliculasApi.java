package com.peliculas.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.peliculas.service.*;
import com.peliculas.model.*;
@RestController
public class PeliculasApi {

	public final PeliculasService peliculasService;

	public PeliculasApi(PeliculasService peliculasService) {
		this.peliculasService = peliculasService;
	}
	
	@GetMapping("/peliculas")
	public List<Pelicula> mostrarTodasLasPeliculas() {;
	
	List<Pelicula> peliculas = peliculasService.mostrarTodosLosUsuarios();
	
	return peliculas;
	}
	
	@GetMapping("/crearPelicula")
	public Pelicula crearPelicula(
			@RequestParam(value="titulo") String titulo,
			@RequestParam(value="ano") int ano,
			@RequestParam(value = "caratula") String caratula,
			@RequestParam(value = "critica" ) String critica
			
			) {
		
		Pelicula pelicula = new Pelicula();
		pelicula.setAno(ano);
		pelicula.setCaratula(caratula);
		pelicula.setCritica(critica);
		pelicula.setTitulo(titulo);
		return peliculasService.crearPelicula(pelicula);
		
		
			}
	
	
	
	@GetMapping("/peliculas/{id}")
	public Pelicula buscarPeliculaId(@PathVariable("id") Long id) {
		Pelicula x = peliculasService.buscarUsuario(id);
		
		return x;
}
	
	
	
}