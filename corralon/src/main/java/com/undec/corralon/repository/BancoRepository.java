package com.undec.corralon.repository;

import com.undec.corralon.modelo.Banco;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BancoRepository extends JpaRepository <Banco, Integer> {

}
