package org.cit.mokjo.restorant.repository;

import org.cit.mokjo.restorant.migration_tabels.BookTable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("bookTabel")
public interface BookTableRepository extends JpaRepository<BookTable, Long>{

}
