package kr.ac.kopo.strike.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.ClanMemberMember;

@Repository
public class ClanMemberDaoImpl implements ClanMemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<ClanMemberMember> list(int clan_code) {
		return sql.selectList("clanMemberMember.list", clan_code);
	}

	@Override
	public void add(int clan_code, int member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_code", clan_code);
		map.put("member_code", member_code);
		
		sql.insert("clanMemberMember.add", map);
	}

	@Override
	public void permission(int clan_code, int member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_code", clan_code);
		map.put("member_code", member_code);
		
		sql.insert("clanMemberMember.permission", map);
	}

}
