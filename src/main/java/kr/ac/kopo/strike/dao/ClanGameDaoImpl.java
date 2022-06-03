package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanGame;

@Repository
public class ClanGameDaoImpl implements ClanGameDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<ClanGame> list() {
		return sql.selectList("clanGame.list");
	}

	@Override
	public void add(ClanGame clanGame) {
		sql.insert("clanGame.add", clanGame);
	}

	@Override
	public ClanGame item(int clan_game_code) {
		return sql.selectOne("clanGame.item", clan_game_code);
	}

	@Override
	public List<Clan> clan(int clan_game_code) {
		return sql.selectList("clanGame.clan", clan_game_code);
	}

}
