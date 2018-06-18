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

	public FoodItems(String foodName, String foodDescription, Double foodPrice, String timeServing, String foodId) {
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

	public long getId() {
		return id;
	}

}
