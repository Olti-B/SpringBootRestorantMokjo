package org.cit.mokjo.restorant.migration_tabels;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(nullable = false)
	private String username;
	
	@Column(nullable = false)
	private String password;
	
	@Column(nullable = false, unique = true)
	private String email;
	
	@Column (nullable = false)
	private int role;

	@Column(nullable = false)
	private Timestamp date;

	public Users(String username, String password, String email, int role) {
	    super();
	    this.username = username;
	    this.password = password;
	    this.email = email;
	    this.role = role;
	}
	

	public Users() {
	    super();
	}


	/**
	 * @return the username
	 */
	public String getUsername() {
	    return username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
	    return password;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
	    return email;
	}

	/**
	 * @return the role
	 */
	public int getRole() {
	    return role;
	}
	

}
