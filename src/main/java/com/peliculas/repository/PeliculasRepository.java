package com.peliculas.repository;
import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.peliculas.model.*;
public interface PeliculasRepository extends CrudRepository <Pelicula, Long> {
	
	List<Pelicula> findAll();
	
	Optional<Pelicula> findByid(int id);
	
	Pelicula findByName(String nombre);

}
