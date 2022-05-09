package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanListDao;
import kr.ac.kopo.strike.model.ClanList;

@Service
public class ClanListServiceImpl implements ClanListService {

	@Autowired
	ClanListDao dao;
	
	@Override
	public void add(ClanList item) {
		dao.add(item);
	}

	@Override
	public ClanList item(ClanList item) {
		return dao.item(item);
	}

	@Override
	public List<ClanList> list() {
		return dao.list();
	}

	@Override
	public void update(ClanList item) {
		dao.update(item);
	}

	@Override
	public void delete(ClanList item) {
		dao.delete(item);
	}

}
