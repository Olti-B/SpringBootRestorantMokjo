package org.cit.mokjo.restorant.service;

import org.cit.mokjo.restorant.migration_tabels.Users;

public interface UserService {
    
    	public Users findUsersByEmailAndPassword(String email, String Password);

	public void saveUser(Users user);

	public Users findUsersByEmail(String email);

}
