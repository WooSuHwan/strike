package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.FranchiseeAdd;

@Repository
public class FranchiseeAddDaoImpl implements FranchiseeAddDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<FranchiseeAdd> list() {
		return sql.selectList("franchiseeAdd.list");
	}

	@Override
	public void add(FranchiseeAdd franchiseeAdd) {
		sql.insert("franchiseeAdd.add", franchiseeAdd);
	}

	@Override
	public FranchiseeAdd item(int franchisee_suggest_code) {
		return sql.selectOne("franchiseeAdd.item", franchisee_suggest_code);
	}

}
