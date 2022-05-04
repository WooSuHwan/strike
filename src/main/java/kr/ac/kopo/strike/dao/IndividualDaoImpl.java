package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Individual;

@Repository
public class IndividualDaoImpl implements IndividualDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Individual> list() {
		return sql.selectList("individual.list");
	}

	@Override
	public void add(Individual individual) {
		sql.insert("individual.add", individual);
	}

	@Override
	public void delete(int individual_code) {
		sql.delete("individual.delete", individual_code);
	}

}
