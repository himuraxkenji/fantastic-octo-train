package com.undec.corralon.modelo;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "tipo_tarjeta", schema = "santo_domingo_corralon", catalog = "")
public class TipoTarjeta {
    private Integer id;
    private String nombre;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TipoTarjeta that = (TipoTarjeta) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(nombre, that.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nombre);
    }
}
