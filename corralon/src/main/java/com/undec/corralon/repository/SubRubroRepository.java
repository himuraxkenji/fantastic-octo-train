package com.undec.corralon.repository;

import com.undec.corralon.modelo.SubRubro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SubRubroRepository extends JpaRepository<SubRubro, Integer> {
    List<SubRubro> findAllByHabilitacionEquals(Integer id);
}
