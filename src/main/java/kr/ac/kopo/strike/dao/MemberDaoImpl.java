package kr.ac.kopo.strike.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public int idCount(String id) {
		return sql.selectOne("member.idCount", id);
	}

	@Override
	public void add(Member member) {
		sql.insert("member.add", member);
	}

}
