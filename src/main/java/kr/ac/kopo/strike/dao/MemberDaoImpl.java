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

	@Override
	public Member item(Member member) {
		return sql.selectOne("member.item", member);
	}

	@Override
	public void update(Member item) {
		sql.update("member.update", item);
	}

	@Override
	public void delete(int member_code) {
		sql.delete("member.delete", member_code);
	}

	@Override
	public Member mypage(Member item) {
		return sql.selectOne("member.mypage", item);
	}
}
