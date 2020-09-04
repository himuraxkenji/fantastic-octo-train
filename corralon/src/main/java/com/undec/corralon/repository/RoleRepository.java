package com.undec.corralon.repository;

import com.undec.corralon.modelo.DAOUser;
import com.undec.corralon.modelo.Role;
import com.undec.corralon.util.RoleEnum;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {

    Optional<Role> findByName(RoleEnum name);
}
