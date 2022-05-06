package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
	public void add(Clan clan) {
		dao.add(clan);
	}

	@Override
	public Clan item(int member_code) {
		return dao.item(member_code);
	}

	@Override
	public void update(Clan item) {
		dao.update(item);
	}

	@Override
	public void delete(int member_code) {
		dao.delete(member_code);
	}

}
