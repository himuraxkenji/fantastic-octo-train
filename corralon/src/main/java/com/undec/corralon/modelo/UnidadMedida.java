package com.undec.corralon.modelo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "unidad_medida", schema = "santo_domingo_corralon", catalog = "")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class UnidadMedida {
    private int id;
    private String nombre;
    private String abreviatura;
    private byte habilitado;

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
    public byte getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(byte habilitado) {
        this.habilitado = habilitado;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UnidadMedida that = (UnidadMedida) o;
        return id == that.id &&
                habilitado == that.habilitado &&
                Objects.equals(nombre, that.nombre) &&
                Objects.equals(abreviatura, that.abreviatura);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nombre, abreviatura, habilitado);
    }
}
