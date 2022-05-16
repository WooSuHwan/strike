package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.ClanMemberMember;

public interface ClanMemberService {

	List<ClanMemberMember> list(int clan_code);

	void add(int clan_code, int member_code);

	void permission(int clan_code, int member_code);

}
