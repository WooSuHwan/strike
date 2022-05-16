package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;

public interface ClanService {

	List<Clan> list();

	void add(Clan item);

	Clan item(String clanName);

	void update(Clan item);

	void delete(String clanName);

}
