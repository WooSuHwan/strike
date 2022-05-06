package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Clan;

@Repository
public class ClanDaoImpl implements ClanDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Clan> list() {
		return sql.selectList("clan.list");
	}

}
