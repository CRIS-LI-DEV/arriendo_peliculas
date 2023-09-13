package com.peliculas.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.peliculas.model.*;
public interface CopiaRepository   extends CrudRepository < Copia, Long>{
	
	List<Copia> findAll();

}
