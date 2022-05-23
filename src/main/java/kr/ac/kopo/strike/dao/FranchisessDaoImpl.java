package kr.ac.kopo.strike.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Franchisee;

@Repository
public class FranchisessDaoImpl implements FranchisessDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public boolean confirm(String franchisee_id) {
		return sql.selectOne("franchisess.confirm", franchisee_id);
	}

	@Override
	public void add(Franchisee franchisee) {
		sql.insert("franchisess.add", franchisee);
	}

}
