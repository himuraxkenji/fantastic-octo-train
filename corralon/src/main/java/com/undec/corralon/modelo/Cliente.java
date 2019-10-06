package com.undec.corralon.modelo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

@Entity
public class Cliente {
    private Integer id;
    private String nombre;
    private String apellido;
    private String dni;
    private Integer habilitacion;
    private Date fechaalta;
    private Date fechaactualizacion;
    private Date fechabaja;

    @Id
    @Column(name = "id", nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "nombre", nullable = false, length = 100)
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "apellido", nullable = false, length = 100)
    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    @Basic
    @Column(name = "dni", nullable = false, length = 100)
    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    @Basic
    @Column(name = "habilitacion", nullable = false)
    public Integer getHabilitacion() {
        return habilitacion;
    }

    public void setHabilitacion(Integer habilitacion) {
        this.habilitacion = habilitacion;
    }

    @Basic
    @Column(name = "fechaalta", nullable = false)
    public Date getFechaalta() {
        return fechaalta;
    }

    public void setFechaalta(Date fechaalta) {
        this.fechaalta = fechaalta;
    }

    @Basic
    @Column(name = "fechaactualizacion", nullable = false)
    public Date getFechaactualizacion() {
        return fechaactualizacion;
    }

    public void setFechaactualizacion(Date fechaactualizacion) {
        this.fechaactualizacion = fechaactualizacion;
    }

    @Basic
    @Column(name = "fechabaja", nullable = true)
    public Date getFechabaja() {
        return fechabaja;
    }

    public void setFechabaja(Date fechabaja) {
        this.fechabaja = fechabaja;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Cliente cliente = (Cliente) o;

        if (id != null ? !id.equals(cliente.id) : cliente.id != null) return false;
        if (nombre != null ? !nombre.equals(cliente.nombre) : cliente.nombre != null) return false;
        if (apellido != null ? !apellido.equals(cliente.apellido) : cliente.apellido != null) return false;
        if (dni != null ? !dni.equals(cliente.dni) : cliente.dni != null) return false;
        if (habilitacion != null ? !habilitacion.equals(cliente.habilitacion) : cliente.habilitacion != null)
            return false;
        if (fechaalta != null ? !fechaalta.equals(cliente.fechaalta) : cliente.fechaalta != null) return false;
        if (fechaactualizacion != null ? !fechaactualizacion.equals(cliente.fechaactualizacion) : cliente.fechaactualizacion != null)
            return false;
        if (fechabaja != null ? !fechabaja.equals(cliente.fechabaja) : cliente.fechabaja != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (apellido != null ? apellido.hashCode() : 0);
        result = 31 * result + (dni != null ? dni.hashCode() : 0);
        result = 31 * result + (habilitacion != null ? habilitacion.hashCode() : 0);
        result = 31 * result + (fechaalta != null ? fechaalta.hashCode() : 0);
        result = 31 * result + (fechaactualizacion != null ? fechaactualizacion.hashCode() : 0);
        result = 31 * result + (fechabaja != null ? fechabaja.hashCode() : 0);
        return result;
    }
}
