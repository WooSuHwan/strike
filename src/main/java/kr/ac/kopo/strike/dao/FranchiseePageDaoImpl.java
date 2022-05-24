package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Game;

@Repository
public class FranchiseePageDaoImpl implements FranchiseePageDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Game> game(String address) {
		return sql.selectList("franchiseePage.game", address);
	}

}
