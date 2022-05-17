package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanMember;

@Repository
public class ClanDaoImpl implements ClanDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Clan> list() {
		return sql.selectList("clan.list");
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
	public List<ClanMember> clanMember(int clan_code) {
		return sql.selectList("clan.view", clan_code);
	}

	@Override
	public List<Clan> clan(int clan_code) {
		return sql.selectList("clan.clan", clan_code);
	}

}
