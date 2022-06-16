package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.SuggestMasterDao;
import kr.ac.kopo.strike.model.SuggestMaster;
import kr.ac.kopo.strike.util.Pager;

@Service
public class SuggestMasterServiceImpl implements SuggestMasterService {
	
	@Autowired
	SuggestMasterDao dao;
	
	@Override
	public List<SuggestMaster> list(Pager pager) {
		
		int total = dao.total(pager);
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(SuggestMaster item) {
		dao.add(item);

	}

	@Override
	public void delete(int master_code) {
		dao.delete(master_code);

	}

	

	@Override
	public void addCount(int master_code) {
		dao.addCount(master_code);

	}

	@Override
	public SuggestMaster read(int master_code) throws Exception {
		
		return dao.read(master_code);
	}

	@Override
	public SuggestMaster item(int master_code) {
		
		return dao.item(master_code);
	}

	@Override
	public List<SuggestMaster> list() {
		Pager pager = new Pager();
		int total = dao.total(pager);
		pager.setTotal(total);
		pager.setPerPage(total);
		
		
		return dao.list(pager);
	}

	@Override
	public void update(SuggestMaster item) {
		dao.update(item);
		
	}

}
