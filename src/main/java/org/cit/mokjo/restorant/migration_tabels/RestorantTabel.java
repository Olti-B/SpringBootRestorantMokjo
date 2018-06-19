package org.cit.mokjo.restorant.migration_tabels;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tabel")
public class RestorantTabel implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = true)
    private boolean isAvailable;

    @Column(nullable = true, unique = true)
    private Date date;

    @Column(nullable = false)
    private Integer numberOfChairs;

    @Column(nullable = false)
    private String tabelId;

    public RestorantTabel(boolean isAvailable, Date date, Integer numberOfChairs, String tabelId) {
	super();
	this.isAvailable = isAvailable;
	this.date = date;
	this.numberOfChairs = numberOfChairs;
	this.tabelId = tabelId;
    }
    
    

    public RestorantTabel() {
	super();
    }



    public boolean isAvailable() {
	return isAvailable;
    }

    public Date getDate() {
	return date;
    }

    public Integer getNumberOfChairs() {
	return numberOfChairs;
    }

    public String getTabelId() {
	return tabelId;
    }

    public long getId() {
	return id;
    }

}
