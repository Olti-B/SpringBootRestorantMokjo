package org.cit.mokjo.restorant.service;

import java.util.List;

import org.cit.mokjo.restorant.migration_tabels.FoodItems;

public interface FoodService {

	public List<FoodItems> getAllItems();

	public FoodItems findOneValue(long id);

	public void delete(Long id);

}
