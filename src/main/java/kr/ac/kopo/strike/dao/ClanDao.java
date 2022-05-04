package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;

public interface ClanDao {

	List<Clan> list();

	void add(Clan item);

	Clan item(String tName);

	void update(Clan item);

	void delete(String tName);

}
