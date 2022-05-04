package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Free;

@Repository
public class FreeDaoImpl implements FreeDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Free> list() {
		return sql.selectList("free.list");
	}

}
