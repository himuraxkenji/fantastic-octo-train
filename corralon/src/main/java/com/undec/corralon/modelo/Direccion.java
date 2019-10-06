package com.undec.corralon.modelo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Direccion {
    private Integer id;
    private String calle;
    private String numerocalle;
    private String barrio;
    private String entrecalles;
    private String descripcion;
    private String ubicacion;
    private Integer habilitado;
    private LocalDate fechaalta;
    private LocalDate fechaactualizacion;
    private LocalDate fechabaja;
    private Cliente clienteByFkclienteid;

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "calle", nullable = false, length = 100)
    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    @Basic
    @Column(name = "numerocalle", nullable = false, length = 100)
    public String getNumerocalle() {
        return numerocalle;
    }

    public void setNumerocalle(String numerocalle) {
        this.numerocalle = numerocalle;
    }

    @Basic
    @Column(name = "barrio", nullable = false, length = 100)
    public String getBarrio() {
        return barrio;
    }

    public void setBarrio(String barrio) {
        this.barrio = barrio;
    }

    @Basic
    @Column(name = "entrecalles", nullable = false, length = 100)
    public String getEntrecalles() {
        return entrecalles;
    }

    public void setEntrecalles(String entrecalles) {
        this.entrecalles = entrecalles;
    }

    @Basic
    @Column(name = "descripcion", nullable = true, length = 100)
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Basic
    @Column(name = "ubicacion", nullable = false, length = 100)
    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    @Basic
    @Column(name = "habilitado", nullable = false)
    public Integer getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Integer habilitado) {
        this.habilitado = habilitado;
    }

    @Basic
    @Column(name = "fechaalta", nullable = false)
    public LocalDate getFechaalta() {
        return fechaalta;
    }

    public void setFechaalta(LocalDate fechaalta) {
        this.fechaalta = fechaalta;
    }

    @Basic
    @Column(name = "fechaactualizacion", nullable = false)
    public LocalDate getFechaactualizacion() {
        return fechaactualizacion;
    }

    public void setFechaactualizacion(LocalDate fechaactualizacion) {
        this.fechaactualizacion = fechaactualizacion;
    }

    @Basic
    @Column(name = "fechabaja", nullable = true)
    public LocalDate getFechabaja() {
        return fechabaja;
    }

    public void setFechabaja(LocalDate fechabaja) {
        this.fechabaja = fechabaja;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Direccion direccion = (Direccion) o;

        if (id != null ? !id.equals(direccion.id) : direccion.id != null) return false;
        if (calle != null ? !calle.equals(direccion.calle) : direccion.calle != null) return false;
        if (numerocalle != null ? !numerocalle.equals(direccion.numerocalle) : direccion.numerocalle != null)
            return false;
        if (barrio != null ? !barrio.equals(direccion.barrio) : direccion.barrio != null) return false;
        if (entrecalles != null ? !entrecalles.equals(direccion.entrecalles) : direccion.entrecalles != null)
            return false;
        if (descripcion != null ? !descripcion.equals(direccion.descripcion) : direccion.descripcion != null)
            return false;
        if (ubicacion != null ? !ubicacion.equals(direccion.ubicacion) : direccion.ubicacion != null) return false;
        if (habilitado != null ? !habilitado.equals(direccion.habilitado) : direccion.habilitado != null) return false;
        if (fechaalta != null ? !fechaalta.equals(direccion.fechaalta) : direccion.fechaalta != null) return false;
        if (fechaactualizacion != null ? !fechaactualizacion.equals(direccion.fechaactualizacion) : direccion.fechaactualizacion != null)
            return false;
        if (fechabaja != null ? !fechabaja.equals(direccion.fechabaja) : direccion.fechabaja != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (calle != null ? calle.hashCode() : 0);
        result = 31 * result + (numerocalle != null ? numerocalle.hashCode() : 0);
        result = 31 * result + (barrio != null ? barrio.hashCode() : 0);
        result = 31 * result + (entrecalles != null ? entrecalles.hashCode() : 0);
        result = 31 * result + (descripcion != null ? descripcion.hashCode() : 0);
        result = 31 * result + (ubicacion != null ? ubicacion.hashCode() : 0);
        result = 31 * result + (habilitado != null ? habilitado.hashCode() : 0);
        result = 31 * result + (fechaalta != null ? fechaalta.hashCode() : 0);
        result = 31 * result + (fechaactualizacion != null ? fechaactualizacion.hashCode() : 0);
        result = 31 * result + (fechabaja != null ? fechabaja.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "fkclienteid", referencedColumnName = "id", nullable = false)
    public Cliente getClienteByFkclienteid() {
        return clienteByFkclienteid;
    }

    public void setClienteByFkclienteid(Cliente clienteByFkclienteid) {
        this.clienteByFkclienteid = clienteByFkclienteid;
    }
}
