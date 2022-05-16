package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanDao;
import kr.ac.kopo.strike.model.Clan;

@Service
public class ClanServiceImpl implements ClanService {
	
	@Autowired
	ClanDao dao;
	
	@Override
	public List<Clan> list() {
		
		return dao.list();
	}

	@Override
	public void add(Clan item) {
		dao.add(item);
	}

	@Override
	public Clan item(String clanName) {
		return dao.item(clanName);
	}

	@Override
	public void update(Clan item) {
		dao.update(item);
	}

	@Override
	public void delete(String clanName) {
		dao.delete(clanName);
	}

}
