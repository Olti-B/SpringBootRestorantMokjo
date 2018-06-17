package org.cit.mokjo.restorant.repository;

import org.cit.mokjo.restorant.migration_tabels.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<Users, Long> {
    
    Users findUsersByEmail(String email);
    
    Users findUsersByEmailAndPassword(String email, String password);    
    
}