package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.ClanList;

public interface ClanListService {

	void add(ClanList item);

	ClanList item(ClanList item);

	List<ClanList> list();

	void update(ClanList item);

	void delete(ClanList item);

}
