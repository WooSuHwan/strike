package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.ClanMember;

public interface ClanMemberService {

	List<ClanMember> list(int clan_code);

}
