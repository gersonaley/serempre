package net.codejava.tarea;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import net.codejava.soap.MyCalculator;

@Entity
public class Tarea {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String titulo;
	private String descripcion;
	private String usuario;
	private int t_estimado;
	private float t_trabajado;
	
	protected Tarea() {
	}
	
	public Tarea(String titulo, String descripcion, String usuario, int t_estimado, float t_trabajado) {
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.usuario = usuario;
		this.t_estimado = t_estimado;
		this.t_trabajado = t_trabajado;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public int getT_estimado() {
		return t_estimado;
	}

	public void setT_estimado(int t_estimado) {
		this.t_estimado = t_estimado;
	}

	public float getT_trabajado() {
		return t_trabajado;
	}

	public void setT_trabajado(float t_trabajado) {
		this.t_trabajado = t_trabajado;
	}
	
	public int CalculateTimeResting(int t_estimado, float t_trabajado) {
		
		MyCalculator myCalculator = new MyCalculator();
		return (int) (t_estimado - t_trabajado);
	}
}
