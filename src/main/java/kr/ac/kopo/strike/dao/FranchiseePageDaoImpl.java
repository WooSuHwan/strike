package kr.ac.kopo.strike.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.GameRecord;
import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.model.ClanGameRecord;
import kr.ac.kopo.strike.model.Game;

@Repository
public class FranchiseePageDaoImpl implements FranchiseePageDao {

	@Autowired
	SqlSession sql;
	// 개인 게임
	@Override
	public List<Game> game(String address) {
		return sql.selectList("franchiseePage.game", address);
	}

	@Override
	public List<GameRecord> gameRecord(int game_code) {
		return sql.selectList("franchiseePage.gameRecord", game_code);
	}

	@Override
	public void makerWin(int maker_code) {
		sql.update("franchiseePage.makerWin", maker_code);
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
	public void makerLose(int maker_code) {
		sql.update("franchiseePage.makerLose", maker_code);
	}

	@Override
	public void draw(int maker_code, int challenger_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("challenger_code", challenger_code);
		map.put("maker_code", maker_code);
		
		sql.update("franchiseePage.draw", map);
	}

	@Override
	public void makerWinGameRecord(int game_record_code, int maker_code, int challenger_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("game_record_code", game_record_code);
		map.put("challenger_code", challenger_code);
		map.put("maker_code", maker_code);
		
		sql.update("franchiseePage.makerWinGameRecord", map);
	}

	@Override
	public void challengerWinGameRecord(int game_record_code, int challenger_code, int maker_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("game_record_code", game_record_code);
		map.put("challenger_code", challenger_code);
		map.put("maker_code", maker_code);
		
		sql.update("franchiseePage.challengerWinGameRecord", map);
	}

	@Override
	public void drawGameRecord(int game_record_code) {
		sql.update("franchiseePage.drawGameRecord", game_record_code);
	}

	@Override
	public List<GameRecord> gameRecordEnd(int game_code) {
		return sql.selectList("franchiseePage.gameRecordEnd", game_code);
	}
	// 클랜 게임
	@Override
	public List<ClanGame> clanGame(String address) {
		return sql.selectList("franchiseePage.clanGame", address);
	}

	@Override
	public List<ClanGameRecord> clanGameRecord(int clan_game_code) {
		return sql.selectList("franchiseePage.clanGameRecord", clan_game_code);
	}

	@Override
	public List<ClanGameRecord> clanGameRecordEnd(int clan_game_code) {
		return sql.selectList("franchiseePage.clanGameRecordEnd", clan_game_code);
	}

	@Override
	public void clanMakerWin(int clan_maker_code) {
		sql.update("franchiseePage.clanMakerWin", clan_maker_code);
	}

	@Override
	public void clanChallengerLose(int challenger_clan_code) {
		sql.update("franchiseePage.clanChallengerLose", challenger_clan_code);
	}

	@Override
	public void clanMakerWinGameRecord(int clan_game_record_code, int clan_maker_code, int challenger_clan_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_game_record_code", clan_game_record_code);
		map.put("challenger_clan_code", challenger_clan_code);
		map.put("clan_maker_code", clan_maker_code);
		
		sql.update("franchiseePage.clanMakerWinGameRecord", map);
	}

	@Override
	public void clanChallengerWin(int challenger_clan_code) {
		sql.update("franchiseePage.clanChallengerWin", challenger_clan_code);
	}

	@Override
	public void clanMakerLose(int clan_maker_code) {
		sql.update("franchiseePage.clanMakerLose", clan_maker_code);
	}

	@Override
	public void clanChallengerWinGameRecord(int clan_game_record_code, int challenger_clan_code, int clan_maker_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_game_record_code", clan_game_record_code);
		map.put("challenger_clan_code", challenger_clan_code);
		map.put("clan_maker_code", clan_maker_code);
		
		sql.update("franchiseePage.clanChallengerWinGameRecord", map);
	}

	@Override
	public void clanDraw(int clan_maker_code, int challenger_clan_code) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("challenger_clan_code", challenger_clan_code);
		map.put("clan_maker_code", clan_maker_code);
		
		sql.update("franchiseePage.clanDraw", map);
	}

	@Override
	public void clanDrawGameRecord(int clan_game_record_code) {
		sql.update("franchiseePage.clanDrawGameRecord", clan_game_record_code);
	}

}
