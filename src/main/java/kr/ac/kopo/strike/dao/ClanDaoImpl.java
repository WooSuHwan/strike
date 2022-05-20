package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.util.Pager;

@Repository
public class ClanDaoImpl implements ClanDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Clan> list(Pager pager) {
		return sql.selectList("clan.list", pager);
	}

	@Override
	public void add(Clan clan) {
		sql.insert("clan.add", clan);
	}

	@Override
	public Clan item(int member_code) {
		return sql.selectOne("clan.item", member_code);
	}

	@Override
	public void update(Clan item) {
		sql.update("clan.update", item);
	}

	@Override
	public void delete(int member_code) {
		sql.delete("clan.delete", member_code);
	}

	@Override
	public List<Clan> clanList() {
		return sql.selectList("clan.clanList");
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("clan.total", pager);
	}

}
