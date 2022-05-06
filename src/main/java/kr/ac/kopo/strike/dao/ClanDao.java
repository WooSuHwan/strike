package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;

public interface ClanDao {

	List<Clan> list();

	void add(Clan clan);

	Clan item(int member_code);

	void update(Clan item);

	void delete(int member_code);

}
