package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanMember;

public interface ClanDao {

	List<Clan> list();

	void add(Clan clan);

	Clan item(int member_code);

	void update(Clan item);

	void delete(int member_code);

	List<ClanMember> wait(int clan_code);

	List<Clan> clan(int clan_code);

	List<ClanMember> clanMember(int clan_code);

}
