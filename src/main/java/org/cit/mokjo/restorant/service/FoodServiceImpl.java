package org.cit.mokjo.restorant.service;

import java.util.List;
import org.cit.mokjo.restorant.migration_tabels.FoodItems;
import org.cit.mokjo.restorant.repository.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("foodService")
public class FoodServiceImpl implements FoodService{

    @Autowired
    private FoodRepository foodRepo;
    
//    private final List<FoodItems> foodList = new ArrayList<FoodItems>();

    @Override
    public List<FoodItems> getAllItems() {
	return foodRepo.findAll();
    }
    

}
