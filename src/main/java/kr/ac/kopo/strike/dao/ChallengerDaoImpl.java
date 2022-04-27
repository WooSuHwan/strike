package kr.ac.kopo.strike.dao;


import java.util.HashMap;
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
	public List<Challenger> list(int game_code) {
		return sql.selectList("challenger.list", game_code);
	}
	
	@Override
	public void add(int game_code, int member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("game_code", game_code);
		map.put("member_code", member_code);
		
		sql.insert("challenger.add", map);
	}
}
