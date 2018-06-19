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
@Table(name = "food")
public class FoodItems implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column(nullable = false)
	private String foodName;

	@Column(nullable = true)
	private String foodDescription;

	@Column(nullable = false)
	private Double foodPrice;

	@Column(nullable = false)
	private String timeServing;

	@Column(nullable = false)
	private String foodId;

	@Column(nullable = false)
	private Timestamp date;

	public FoodItems(String foodName, String foodDescription, String timeServing, String foodId, Double foodPrice) {
		super();
		this.foodName = foodName;
		this.foodDescription = foodDescription;
		this.foodPrice = foodPrice;
		this.timeServing = timeServing;
		this.foodId = foodId;
	}

	public FoodItems() {
		super();
	}

	public long getId() {
	    return id;
	}

	public String getFoodName() {
	    return foodName;
	}

	public String getFoodDescription() {
	    return foodDescription;
	}

	public Double getFoodPrice() {
	    return foodPrice;
	}

	public String getTimeServing() {
	    return timeServing;
	}

	public String getFoodId() {
	    return foodId;
	}

	public void setId(long id) {
	    this.id = id;
	}

	public void setFoodName(String foodName) {
	    this.foodName = foodName;
	}

	public void setFoodDescription(String foodDescription) {
	    this.foodDescription = foodDescription;
	}

	public void setFoodPrice(Double foodPrice) {
	    this.foodPrice = foodPrice;
	}

	public void setTimeServing(String timeServing) {
	    this.timeServing = timeServing;
	}

	public void setFoodId(String foodId) {
	    this.foodId = foodId;
	}


	
}
