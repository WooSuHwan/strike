package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.ClanList;

public interface ClanListDao {

	void add(ClanList item);

	ClanList item(ClanList item);

	List<ClanList> list();

	void update(ClanList item);

	void delete(ClanList item);

}
