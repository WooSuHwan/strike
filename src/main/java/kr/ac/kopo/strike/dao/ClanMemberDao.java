package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.ClanMemberMember;

public interface ClanMemberDao {

	List<ClanMemberMember> list(int clan_code);

	void add(int clan_code, int member_code);

	void permission(int clan_code, int member_code);

}
