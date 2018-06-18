package org.cit.mokjo.restorant.service;

import java.util.List;

import org.cit.mokjo.restorant.migration_tabels.BookTable;

public interface BookTableService {

	public void bookTable(BookTable table);

	public List<BookTable> getAllItems();

	public BookTable findOne(Long id);

}
