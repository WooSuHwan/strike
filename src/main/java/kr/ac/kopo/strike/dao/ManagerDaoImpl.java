package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Franchisee;

@Repository
public class ManagerDaoImpl implements ManagerDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Franchisee> list() {
		return sql.selectList("manager.list");
	}

}
