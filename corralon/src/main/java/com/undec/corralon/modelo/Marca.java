package com.undec.corralon.modelo;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "marca", schema = "santo_domingo_corralon")
public class Marca {
    private int id;
    private String nombre;
    private String abreviatura;

    @Id
    @Column(name = "id")
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Marca that = (Marca) o;
        return id == that.id &&
                Objects.equals(nombre, that.nombre) &&
                Objects.equals(abreviatura, that.abreviatura);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nombre, abreviatura);
    }
}
