package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanMemberDao;
import kr.ac.kopo.strike.model.ClanMemberMember;

@Service
public class ClanMemberServiceImpl implements ClanMemberService {

	@Autowired
	ClanMemberDao dao;
	
	@Override
	public List<ClanMemberMember> list(int clan_code) {
		return dao.list(clan_code);
	}

	@Override
	public void add(int clan_code, int member_code) {
		dao.add(clan_code, member_code);
	}

	@Override
	public void permission(int clan_code, int member_code) {
		dao.permission(clan_code, member_code);
	}

}
