package org.cit.mokjo.restorant.service;

import org.cit.mokjo.restorant.migration_tabels.Users;
import org.cit.mokjo.restorant.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{
    
    @Autowired
    private UserRepository userRepository;

    @Override
    public Users findUsersByEmailAndPassword(String email, String Password) {
	return userRepository.findUsersByEmailAndPassword(email, Password);
    }

    @Override
    public void saveUser(Users user) {
	userRepository.save(user);
    }

    @Override
    public Users findUsersByEmail(String email) {
	return userRepository.findUsersByEmail(email);
    }
    

}
