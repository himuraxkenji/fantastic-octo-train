package com.undec.corralon.modelo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Usuario {
    private Integer id;
    private String nombre;
    private String password;
    private Byte habilitacion;

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
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "habilitacion")
    public Byte getHabilitacion() {
        return habilitacion;
    }

    public void setHabilitacion(Byte habilitacion) {
        this.habilitacion = habilitacion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Usuario usuario = (Usuario) o;
        return Objects.equals(id, usuario.id) &&
                Objects.equals(nombre, usuario.nombre) &&
                Objects.equals(password, usuario.password) &&
                Objects.equals(habilitacion, usuario.habilitacion);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nombre, password, habilitacion);
    }
}
