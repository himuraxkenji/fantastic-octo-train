package com.undec.corralon.modelo;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Distrito {
    private Integer id;
    private String nombre;
    private String abreviatura;
    private Byte habilitado;
    private Date fechaalta;
    private Date fechaactualizacion;
    private Date fechabaja;
    private Collection<Direccion> direccionsById;
    private Departamento departamentoByFkdepartamentosid;

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
        Distrito distrito = (Distrito) o;
        return Objects.equals(id, distrito.id) &&
                Objects.equals(nombre, distrito.nombre) &&
                Objects.equals(abreviatura, distrito.abreviatura) &&
                Objects.equals(habilitado, distrito.habilitado) &&
                Objects.equals(fechaalta, distrito.fechaalta) &&
                Objects.equals(fechaactualizacion, distrito.fechaactualizacion) &&
                Objects.equals(fechabaja, distrito.fechabaja);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nombre, abreviatura, habilitado, fechaalta, fechaactualizacion, fechabaja);
    }

    @OneToMany(mappedBy = "distritoByFkdistritosid")
    public Collection<Direccion> getDireccionsById() {
        return direccionsById;
    }

    public void setDireccionsById(Collection<Direccion> direccionsById) {
        this.direccionsById = direccionsById;
    }

    @ManyToOne
    @JoinColumn(name = "fkdepartamentosid", referencedColumnName = "id")
    public Departamento getDepartamentoByFkdepartamentosid() {
        return departamentoByFkdepartamentosid;
    }

    public void setDepartamentoByFkdepartamentosid(Departamento departamentoByFkdepartamentosid) {
        this.departamentoByFkdepartamentosid = departamentoByFkdepartamentosid;
    }
}
