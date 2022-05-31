package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.Pager;

@Repository
public class RankDaoImpl implements RankDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Member> list(Pager pager) {
		return sql.selectList("rank.list",pager);
	}

	@Override
	public List<Member> rankList() {
		return sql.selectList("rank.rankList");
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("rank.total", pager);
	}

}
