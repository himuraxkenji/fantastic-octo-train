package com.undec.corralon.modelo;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Departamento {
    private Integer id;
    private String nombre;
    private String abreviatura;
    private Byte habilitado;
    private Date fechaalta;
    private Date fechaactualizacion;
    private Date fechabaja;
    private Collection<Distrito> distritosById;

    @Id
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "abreviatura")
    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
    }

    @Basic
    @Column(name = "habilitado")
    public Byte getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Byte habilitado) {
        this.habilitado = habilitado;
    }

    @Basic
    @Column(name = "fechaalta")
    public Date getFechaalta() {
        return fechaalta;
    }

    public void setFechaalta(Date fechaalta) {
        this.fechaalta = fechaalta;
    }

    @Basic
    @Column(name = "fechaactualizacion")
    public Date getFechaactualizacion() {
        return fechaactualizacion;
    }

    public void setFechaactualizacion(Date fechaactualizacion) {
        this.fechaactualizacion = fechaactualizacion;
    }

    @Basic
    @Column(name = "fechabaja")
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
        Departamento that = (Departamento) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(nombre, that.nombre) &&
                Objects.equals(abreviatura, that.abreviatura) &&
                Objects.equals(habilitado, that.habilitado) &&
                Objects.equals(fechaalta, that.fechaalta) &&
                Objects.equals(fechaactualizacion, that.fechaactualizacion) &&
                Objects.equals(fechabaja, that.fechabaja);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nombre, abreviatura, habilitado, fechaalta, fechaactualizacion, fechabaja);
    }

    @OneToMany(mappedBy = "departamentoByFkdepartamentosid")
    public Collection<Distrito> getDistritosById() {
        return distritosById;
    }

    public void setDistritosById(Collection<Distrito> distritosById) {
        this.distritosById = distritosById;
    }
}
