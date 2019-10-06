package com.undec.corralon.repository;

import com.undec.corralon.modelo.Distrito;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DistritoRepository extends JpaRepository<Distrito, Integer> {
}
