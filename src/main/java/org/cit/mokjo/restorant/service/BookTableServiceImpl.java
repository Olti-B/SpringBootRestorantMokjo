package org.cit.mokjo.restorant.service;

import org.cit.mokjo.restorant.migration_tabels.BookTable;
import org.cit.mokjo.restorant.repository.BookTableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("bookTable")
public class BookTableServiceImpl implements BookTableService{

    @Autowired
    private BookTableRepository bookRepo;
    
    @Override
    public void bookTable(BookTable table) {
	bookRepo.save(table); 
    }

}
