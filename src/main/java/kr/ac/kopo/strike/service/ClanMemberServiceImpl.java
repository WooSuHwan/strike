package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanMemberDao;
import kr.ac.kopo.strike.model.ClanMember;

@Service
public class ClanMemberServiceImpl implements ClanMemberService {

	@Autowired
	ClanMemberDao dao;
	
	@Override
	public List<ClanMember> list(int clan_code) {
		return dao.list(clan_code);
	}

}
