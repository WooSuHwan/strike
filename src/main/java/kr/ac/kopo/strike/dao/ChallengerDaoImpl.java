package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Challenger;

@Repository
public class ChallengerDaoImpl implements ChallengerDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Challenger> list() {
		return sql.selectList("challenger.list");
	}

}
