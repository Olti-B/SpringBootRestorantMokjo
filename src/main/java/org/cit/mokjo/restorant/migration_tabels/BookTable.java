package org.cit.mokjo.restorant.migration_tabels;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book_table")
public class BookTable implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false)
    private String name;
    
    @Column(nullable = false)
    private String email;
    
    @Column(nullable = false)
    private Integer people;
    

    @Column(nullable = false)
    private String reservId;
    
    @Column(nullable = false)
    private String tableId;
    
    @Column(nullable = false)
    private String phone;
    
    @Column(nullable = false)
    private String message;
    
    @Column(nullable = false)
    private Date date;
    
    @Column(nullable = false)
    private Timestamp timeReservMade;

    public BookTable(String name, String email, Integer people, String reservId, String tableId, String phone, String message, Date date) {
	super();
	this.name = name;
	this.email = email;
	this.people = people;
	this.reservId = reservId;
	this.tableId = tableId;
	this.phone = phone;
	this.message = message;
	this.date = date;
    }

    public String getName() {
	return name;
    }

    public String getEmail() {
	return email;
    }

    public Integer getPeople() {
	return people;
    }

    public String getTableId() {
	return tableId;
    }

    public String getPhone() {
	return phone;
    }

    public String getMessage() {
	return message;
    }

    public Date getDate() {
	return date;
    }

    public Timestamp getTimeReservMade() {
	return timeReservMade;
    }

}
