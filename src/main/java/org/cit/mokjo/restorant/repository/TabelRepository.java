
package org.cit.mokjo.restorant.repository;

import org.cit.mokjo.restorant.migration_tabels.RestorantTabel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("tabelRepository")
public interface TabelRepository extends JpaRepository<RestorantTabel, Long>{
    
}
