package com.undec.corralon.modelo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.sql.Date;

@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Distrito {
    private Integer id;
    private String nombre;
    private String abreviatura;
    private Integer habilitado;
    private Date fechaalta;
    private Date fechaactualizacion;
    private Date fechabaja;
    private Departamento departamentoByFkdepartamentoid;

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
    @Column(name = "nombre", nullable = false, length = 100)
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "abreviatura", nullable = false, length = 100)
    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
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

        Distrito distrito = (Distrito) o;

        if (id != null ? !id.equals(distrito.id) : distrito.id != null) return false;
        if (nombre != null ? !nombre.equals(distrito.nombre) : distrito.nombre != null) return false;
        if (abreviatura != null ? !abreviatura.equals(distrito.abreviatura) : distrito.abreviatura != null)
            return false;
        if (habilitado != null ? !habilitado.equals(distrito.habilitado) : distrito.habilitado != null) return false;
        if (fechaalta != null ? !fechaalta.equals(distrito.fechaalta) : distrito.fechaalta != null) return false;
        if (fechaactualizacion != null ? !fechaactualizacion.equals(distrito.fechaactualizacion) : distrito.fechaactualizacion != null)
            return false;
        if (fechabaja != null ? !fechabaja.equals(distrito.fechabaja) : distrito.fechabaja != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (abreviatura != null ? abreviatura.hashCode() : 0);
        result = 31 * result + (habilitado != null ? habilitado.hashCode() : 0);
        result = 31 * result + (fechaalta != null ? fechaalta.hashCode() : 0);
        result = 31 * result + (fechaactualizacion != null ? fechaactualizacion.hashCode() : 0);
        result = 31 * result + (fechabaja != null ? fechabaja.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "fkdepartamentoid", referencedColumnName = "id", nullable = false)
    public Departamento getDepartamentoByFkdepartamentoid() {
        return departamentoByFkdepartamentoid;
    }

    public void setDepartamentoByFkdepartamentoid(Departamento departamentoByFkdepartamentoid) {
        this.departamentoByFkdepartamentoid = departamentoByFkdepartamentoid;
    }
}
