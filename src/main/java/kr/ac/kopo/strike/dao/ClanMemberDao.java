package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.ClanMember;

public interface ClanMemberDao {

	List<ClanMember> list(int clan_code);

}
