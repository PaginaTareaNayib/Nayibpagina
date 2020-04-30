package com.alvaro.modulo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tbl_beneficiario database table.
 * 
 */
@Entity
@Table(name="tbl_beneficiario")
@NamedQuery(name="TblBeneficiario.findAll", query="SELECT t FROM TblBeneficiario t")
public class TblBeneficiario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idBeneficiario;

	private String direccion;

	private String dui;

	private int edad;

	private String nombre;

	public TblBeneficiario() {
	}

	public int getIdBeneficiario() {
		return this.idBeneficiario;
	}

	public void setIdBeneficiario(int idBeneficiario) {
		this.idBeneficiario = idBeneficiario;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getDui() {
		return this.dui;
	}

	public void setDui(String dui) {
		this.dui = dui;
	}

	public int getEdad() {
		return this.edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}