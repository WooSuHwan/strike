package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.SuggestMasterDao;
import kr.ac.kopo.strike.model.SuggestMaster;

@Service
public class SuggestMasterServiceImpl implements SuggestMasterService {
	
	@Autowired
	SuggestMasterDao dao;
	
	@Override
	public List<SuggestMaster> list() {
		
		return dao.list();
	}

	@Override
	public void add(SuggestMaster item) {
		dao.add(item);

	}

	@Override
	public void delete(int masterCode) {
		dao.delete(masterCode);

	}

	@Override
	public void update(SuggestMaster item) {
		dao.update(item);

	}

	@Override
	public void addCount(int masterCode) {
		dao.addCount(masterCode);

	}

	@Override
	public SuggestMaster read(int masterCode) throws Exception {
		
		return dao.read(masterCode);
	}

	@Override
	public SuggestMaster item(int masterCode) {
		
		return dao.item(masterCode);
	}

}
