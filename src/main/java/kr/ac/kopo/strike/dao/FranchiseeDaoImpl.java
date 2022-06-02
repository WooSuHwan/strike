package kr.ac.kopo.strike.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Franchisee;

@Repository
public class FranchiseeDaoImpl implements FranchiseeDao {

	@Autowired
	SqlSession sql;

	@Override
	public void add(Franchisee franchisee) {
		sql.insert("franchisee.add", franchisee);
	}

	@Override
	public int idCount(String franchisee_id) {
		return sql.selectOne("franchisee.idCount", franchisee_id);
	}

}
