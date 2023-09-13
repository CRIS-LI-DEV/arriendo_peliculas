package com.peliculas.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table (name="copias")
public class Copia {
@Id
@GeneratedValue(strategy= GenerationType.IDENTITY)
private Long id;
private boolean deteriorada;
private String formato;
private float precio_alquiler;


@OneToMany(mappedBy="copia", fetch = FetchType.LAZY)
@JsonManagedReference
private List<Prestamo> prestamos;

@ManyToOne(fetch = FetchType.LAZY)
@JsonBackReference
@JoinColumn(name = "pelicula_id")
private Pelicula pelicula;

public Copia() {}

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public boolean isDeteriorada() {
	return deteriorada;
}

public void setDeteriorada(boolean deteriorada) {
	this.deteriorada = deteriorada;
}

public String getFormato() {
	return formato;
}

public void setFormato(String formato) {
	this.formato = formato;
}

public float getPrecio_alquiler() {
	return precio_alquiler;
}

public void setPrecio_alquiler(float precio_alquiler) {
	this.precio_alquiler = precio_alquiler;
}

public List<Prestamo> getPrestamos() {
	return prestamos;
}

public void setPrestamos(List<Prestamo> prestamos) {
	this.prestamos = prestamos;
}

public Pelicula getPelicula() {
	return pelicula;
}

public void setPelicula(Pelicula pelicula) {
	this.pelicula = pelicula;
}


}
