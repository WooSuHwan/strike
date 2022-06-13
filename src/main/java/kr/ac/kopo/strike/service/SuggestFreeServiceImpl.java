package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.SuggestFreeDao;
import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.model.SuggestFree;
import kr.ac.kopo.strike.util.Pager;

@Service
public class SuggestFreeServiceImpl implements SuggestFreeService {

	@Autowired
	SuggestFreeDao dao;
	
	
	@Override
	public List<SuggestFree> list(Pager pager) {
		
		int total = dao.total(pager);
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(SuggestFree item) {
		dao.add(item);
		
		
	}

	@Override
	public void delete(int free_code) {
		
		dao.delete(free_code);
		
	}

	@Override
	public SuggestFree item(int free_code) {
	
		return dao.item(free_code);
	}

	@Override
	public void update(SuggestFree item) {
		
		dao.update(item);
		
	}

	@Override
	public SuggestFree read(int free_code) throws Exception {
		
		return dao.read(free_code);
	}

	@Override
	public void addCount(int free_code) {
		dao.addCount(free_code);
		
	}

	@Override
	public List<SuggestFree> list() {
		Pager pager = new Pager();
		int total = dao.total(pager);
		pager.setTotal(total);
		pager.setPerPage(total);
		
		
		return dao.list(pager);
	}

	@Override
	public List<SuggestFree> mypageFreeList() {
		return dao.mypageFreeList();
	}
	

	

	

	

}
