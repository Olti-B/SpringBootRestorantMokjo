package org.cit.mokjo.restorant.service;

import java.util.List;

import org.cit.mokjo.restorant.migration_tabels.RestorantTabel;
import org.cit.mokjo.restorant.repository.TabelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("tableService")
public class TabelServiceImpl implements TabelService {

	@Autowired
	private TabelRepository tableRepo;

	@Override
	public List<RestorantTabel> getAllItems() {
		return tableRepo.findAll();
	}

	@Override
	public RestorantTabel findOne(Long id) {
		return tableRepo.findTableById(id);
	}

	public void delete(Long id) {
	   tableRepo.deleteById(id);
	    
	}

	public void save(RestorantTabel restorantTabel) {
	    tableRepo.save(restorantTabel);
	}

}
