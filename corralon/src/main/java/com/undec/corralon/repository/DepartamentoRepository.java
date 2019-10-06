package com.undec.corralon.repository;

import com.undec.corralon.modelo.Departamento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DepartamentoRepository extends JpaRepository<Departamento, Integer> {
}
