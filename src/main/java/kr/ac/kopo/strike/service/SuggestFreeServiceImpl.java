package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.SuggestFreeDao;
import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.model.SuggestFree;

@Service
public class SuggestFreeServiceImpl implements SuggestFreeService {

	@Autowired
	SuggestFreeDao dao;
	
	
	@Override
	public List<SuggestFree> list() {
		return dao.list();
	}

	@Override
	public void add(SuggestFree item) {
		dao.add(item);
		
		
	}

	@Override
	public void delete(int freeCode) {
		
		dao.delete(freeCode);
		
	}

	@Override
	public SuggestFree item(int freeCode) {
	
		return dao.item(freeCode);
	}

	@Override
	public void update(SuggestFree item) {
		
		dao.update(item);
		
	}

	@Override
	public SuggestFree read(int freeCode) throws Exception {
		
		return dao.read(freeCode);
	}

	@Override
	public void addCount(int freeCode) {
		dao.addCount(freeCode);
		
	}
	

	

	

	

}
