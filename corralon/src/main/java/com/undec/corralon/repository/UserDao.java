package com.undec.corralon.repository;

import com.undec.corralon.modelo.DAOUser;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserDao extends CrudRepository<DAOUser, Integer> {
    Optional<DAOUser> findByUsername(String username);

    Boolean existsByUsername(String username);

}
