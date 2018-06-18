package org.cit.mokjo.restorant.repository;

import org.cit.mokjo.restorant.migration_tabels.FoodItems;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("foodRepository")
public interface FoodRepository extends JpaRepository<FoodItems, Long> {

	public FoodItems findFoodById(long id);

}
