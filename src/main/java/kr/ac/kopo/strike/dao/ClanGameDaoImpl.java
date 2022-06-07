package kr.ac.kopo.strike.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanChallenger;
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
	public Clan clanItem(int clan_code) {
		return sql.selectOne("clanGame.clanItem", clan_code);
	}

	@Override
	public List<ClanChallenger> admitClanChallenger(int clan_game_code) {
		return sql.selectList("clanGame.admitClanChallenger", clan_game_code);
	}

	@Override
	public List<ClanChallenger> challenger(int clan_game_code) {
		return sql.selectList("clanGame.challenger", clan_game_code);
	}

	@Override
	public void challenge(int clan_game_code, int clan_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_game_code", clan_game_code);
		map.put("clan_code", clan_code);
		
		sql.insert("clanGame.challenge", map);
	}

	@Override
	public void permission(int clan_game_code, int clan_challenger_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_game_code", clan_game_code);
		map.put("clan_challenger_code", clan_challenger_code);
		
		sql.update("clanGame.permission", map);
	}

	@Override
	public void addClanGame(int clan_game_code, int clan_challenger_code, int clan_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_game_code", clan_game_code);
		map.put("clan_challenger_code", clan_challenger_code);
		map.put("clan_code", clan_code);
		
		sql.insert("clanGame.addClanGame", map);
	}

}
