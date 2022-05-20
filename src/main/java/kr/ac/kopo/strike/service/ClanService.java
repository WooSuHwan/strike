package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.util.Pager;

public interface ClanService {

	List<Clan> list(Pager pager);

	void add(Clan clan);

	Clan item(int member_code);

	void update(Clan item);

	void delete(int member_code);

	List<Clan> clanList();

}
