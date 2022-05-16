package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Member;

@Repository
public class RankDaoImpl implements RankDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Member> list() {
		return sql.selectList("rank.list");
	}

}
