package com.undec.corralon.modelo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "forma_pago", schema = "santo_domingo_corralon", catalog = "")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class FormaPago {
    private int id;
    private double aumento;
    private String descripcion;
    private String nombre;
    private int habilitacion;

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
    @Column(name = "aumento")
    public double getAumento() {
        return aumento;
    }

    public void setAumento(double aumento) {
        this.aumento = aumento;
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
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FormaPago that = (FormaPago) o;
        return id == that.id &&
                Double.compare(that.aumento, aumento) == 0 &&
                Objects.equals(descripcion, that.descripcion) &&
                Objects.equals(nombre, that.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, aumento, descripcion, nombre);
    }

    @Basic
    @Column(name = "habilitacion")
    public int getHabilitacion() {
        return habilitacion;
    }

    public void setHabilitacion(int habilitacion) {
        this.habilitacion = habilitacion;
    }
}
