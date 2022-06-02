package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanMember;
import kr.ac.kopo.strike.util.Pager;

public interface ClanDao {

	List<Clan> list(Pager pager);

	void add(Clan clan);

	Clan item(int member_code);

	void update(Clan item);

	void delete(int member_code);

	List<ClanMember> wait(int clan_code);

	List<Clan> clan(int clan_code);

	List<ClanMember> clanMember(int clan_code);

	void change(int member_code, int clan_code);

	Clan get(int member_code);

	void application(int clan_code, int member_code);

	void permission(int clan_code, int clan_member_code);

	ClanMember getMember(int clan_member_code);

	void changeMember(int clan_code, int member_code);

	int total(Pager pager);

	List<Clan> clanList();

}
