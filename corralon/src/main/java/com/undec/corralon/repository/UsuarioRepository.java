package com.undec.corralon.repository;

import com.undec.corralon.modelo.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {
    Optional<Usuario> findByNombre(String nombre);
    Boolean existsByNombre(String nombre);
    Boolean existsByNombreAndPassword(String nombre, String  pass);
}
