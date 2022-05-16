package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.ClanList;

@Repository
public class ClanListDaoImpl implements ClanListDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(ClanList item) {
		sql.insert("clanList.add", item);
	}

	@Override
	public ClanList item(ClanList item) {
		return sql.selectOne("clanList.item", item);
	}

	@Override
	public List<ClanList> list() {
		return sql.selectList("clanList.list");
	}

	@Override
	public void update(ClanList item) {
		sql.update("clanList.update", item);
	}

	@Override
	public void delete(ClanList item) {
		sql.delete("clanList.delete", item);
	}

}
