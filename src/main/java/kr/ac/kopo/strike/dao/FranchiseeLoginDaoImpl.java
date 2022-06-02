package kr.ac.kopo.strike.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Franchisee;

@Repository
public class FranchiseeLoginDaoImpl implements FranchiseeLoginDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public Franchisee check(String id, String pw) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		
		return sql.selectOne("franchisee.check", map);
	}

}
