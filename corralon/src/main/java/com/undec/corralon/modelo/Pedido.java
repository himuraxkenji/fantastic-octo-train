package com.undec.corralon.modelo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "pedido", schema = "santo_domingo_corralon")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Pedido {
    private int id;
    private Timestamp fecha;
    private String nombre;
    private String descripcion;
    private Integer habilitacion;

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "fecha")
    public Timestamp getFecha() {
        return fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
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
    @Column(name = "descripcion")
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Basic
    @Column(name = "habilitacion")
    public Integer getHabilitacion() {
        return habilitacion;
    }

    public void setHabilitacion(Integer habilitacion) {
        this.habilitacion = habilitacion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Pedido that = (Pedido) o;
        return id == that.id &&
                Objects.equals(fecha, that.fecha) &&
                Objects.equals(nombre, that.nombre) &&
                Objects.equals(descripcion, that.descripcion) &&
                Objects.equals(habilitacion, that.habilitacion);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, fecha, nombre, descripcion, habilitacion);
    }
}
