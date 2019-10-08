package com.undec.corralon.modelo;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
public class Direccion {
    private Integer id;
    private String calle;
    private String numerocalle;
    private String barrio;
    private String entrecalles;
    private String descripcion;
    private String ubicacion;
    private Byte habilitado;
    private Date fechaalta;
    private Date fechaactualizacion;
    private Date fechabaja;
    private Cliente clienteByFkclientesid;
    private Distrito distritoByFkdistritosid;
    private Tipodireccion tipodireccionByFktipodireccionesid;

    @Id
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "calle")
    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    @Basic
    @Column(name = "numerocalle")
    public String getNumerocalle() {
        return numerocalle;
    }

    public void setNumerocalle(String numerocalle) {
        this.numerocalle = numerocalle;
    }

    @Basic
    @Column(name = "barrio")
    public String getBarrio() {
        return barrio;
    }

    public void setBarrio(String barrio) {
        this.barrio = barrio;
    }

    @Basic
    @Column(name = "entrecalles")
    public String getEntrecalles() {
        return entrecalles;
    }

    public void setEntrecalles(String entrecalles) {
        this.entrecalles = entrecalles;
    }

    @Basic
    @Column(name = "descripcion")
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Basic
    @Column(name = "ubicacion")
    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
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
        Direccion direccion = (Direccion) o;
        return Objects.equals(id, direccion.id) &&
                Objects.equals(calle, direccion.calle) &&
                Objects.equals(numerocalle, direccion.numerocalle) &&
                Objects.equals(barrio, direccion.barrio) &&
                Objects.equals(entrecalles, direccion.entrecalles) &&
                Objects.equals(descripcion, direccion.descripcion) &&
                Objects.equals(ubicacion, direccion.ubicacion) &&
                Objects.equals(habilitado, direccion.habilitado) &&
                Objects.equals(fechaalta, direccion.fechaalta) &&
                Objects.equals(fechaactualizacion, direccion.fechaactualizacion) &&
                Objects.equals(fechabaja, direccion.fechabaja);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, calle, numerocalle, barrio, entrecalles, descripcion, ubicacion, habilitado, fechaalta, fechaactualizacion, fechabaja);
    }

    @ManyToOne
    @JoinColumn(name = "fkclientesid", referencedColumnName = "id")
    public Cliente getClienteByFkclientesid() {
        return clienteByFkclientesid;
    }

    public void setClienteByFkclientesid(Cliente clienteByFkclientesid) {
        this.clienteByFkclientesid = clienteByFkclientesid;
    }

    @ManyToOne
    @JoinColumn(name = "fkdistritosid", referencedColumnName = "id")
    public Distrito getDistritoByFkdistritosid() {
        return distritoByFkdistritosid;
    }

    public void setDistritoByFkdistritosid(Distrito distritoByFkdistritosid) {
        this.distritoByFkdistritosid = distritoByFkdistritosid;
    }

    @ManyToOne
    @JoinColumn(name = "fktipodireccionesid", referencedColumnName = "id")
    public Tipodireccion getTipodireccionByFktipodireccionesid() {
        return tipodireccionByFktipodireccionesid;
    }

    public void setTipodireccionByFktipodireccionesid(Tipodireccion tipodireccionByFktipodireccionesid) {
        this.tipodireccionByFktipodireccionesid = tipodireccionByFktipodireccionesid;
    }
}
