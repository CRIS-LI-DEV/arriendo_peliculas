package com.peliculas.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.peliculas.repository.*;


import com.peliculas.model.*;

@Service
public class PeliculasService {

	private final PeliculasRepository peliculasRepository;

	public PeliculasService(PeliculasRepository peliculasRepository) {
		this.peliculasRepository = peliculasRepository;

	}



	public List<Pelicula> mostrarTodosLosUsuarios() {
		return peliculasRepository.findAll();
	}

	public Pelicula crearPelicula(Pelicula pelicula) {
		return peliculasRepository.save(pelicula);
	}
	
	public Pelicula buscarUsuario(Long id) {
		Optional<Pelicula> peliculaOptional = peliculasRepository.findById(id);
		Pelicula pelicula = peliculaOptional.get();
		return pelicula;
	}
	
	public Pelicula buscarPeliculaNombre(String nombre) {
		
		return peliculasRepository.findByName(nombre);
	}
	
}



