package kr.ac.kopo.strike.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.GameRecord;
import kr.ac.kopo.strike.model.Game;

@Repository
public class FranchiseePageDaoImpl implements FranchiseePageDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Game> game(String address) {
		return sql.selectList("franchiseePage.game", address);
	}

	@Override
	public List<GameRecord> gameRecord(int game_code) {
		return sql.selectList("franchiseePage.gameRecord", game_code);
	}

	@Override
	public void makerWin(int member_code) {
		sql.update("franchiseePage.makerWin", member_code);
	}

	@Override
	public void challengerWin(int challenger_code) {
		sql.update("franchiseePage.challengerWin", challenger_code);
	}

	@Override
	public void challengerLose(int challenger_code) {
		sql.update("franchiseePage.challengerLose", challenger_code);
	}

	@Override
	public void makerLose(int member_code) {
		sql.update("franchiseePage.makerLose", member_code);
	}

	@Override
	public void makerWinGameRecord(int game_code, int member_code, int challenger_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("game_code", game_code);
		map.put("member_code", member_code);
		map.put("challenger_code", challenger_code);
		
		sql.insert("franchiseePage.makerWinGameRecord", map);
	}

	@Override
	public void challengerWinGameRecord(int game_code, int challenger_code, int member_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("game_code", game_code);
		map.put("challenger_code", challenger_code);
		map.put("member_code", member_code);
		
		sql.insert("franchiseePage.challengerWinGameRecord", map);
	}

	@Override
	public void draw(int member_code, int challenger_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("challenger_code", challenger_code);
		map.put("member_code", member_code);
		
		sql.update("franchiseePage.draw", map);
	}

	@Override
	public void drawGameRecord(int game_code, int member_code, int challenger_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("game_code", game_code);
		map.put("challenger_code", challenger_code);
		map.put("member_code", member_code);
		
		sql.insert("franchiseePage.drawGameRecord", map);
	}

}
