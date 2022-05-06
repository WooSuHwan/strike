package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.ClanMember;

@Repository
public class ClanMemberDaoImpl implements ClanMemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<ClanMember> list(int clan_code) {
		return sql.selectList("clanMember.list", clan_code);
	}

}
