package org.cit.mokjo.restorant.service;

import java.util.List;

import org.cit.mokjo.restorant.migration_tabels.BookTable;
import org.cit.mokjo.restorant.repository.BookTableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("bookTable")
public class BookTableServiceImpl implements BookTableService {

	@Autowired
	private BookTableRepository bookRepo;

	@Override
	public void bookTable(BookTable table) {
		bookRepo.save(table);
	}

	@Override
	public List<BookTable> getAllItems() {

		return bookRepo.findAll();
	}

	@Override
	public BookTable findOne(Long id) {
		// TODO Auto-generated method stub
		return bookRepo.findBookTableById(id);
	}

	public void delete(Long id) {
	    bookRepo.deleteById(id);
	    
	}

	public void save(BookTable bookTable) {
	   bookRepo.save(bookTable);
	    
	}

}
