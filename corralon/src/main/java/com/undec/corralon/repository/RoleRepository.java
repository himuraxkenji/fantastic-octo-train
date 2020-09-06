package com.undec.corralon.repository;

import com.undec.corralon.modelo.Roles;
import com.undec.corralon.util.RoleEnum;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends CrudRepository<Roles, Long> {

    Optional<Roles> findByName(RoleEnum name);
}
