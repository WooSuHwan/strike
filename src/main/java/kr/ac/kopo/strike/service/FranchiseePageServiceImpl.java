package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseePageDao;
import kr.ac.kopo.strike.model.GameRecord;
import kr.ac.kopo.strike.util.Pager;
import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.model.ClanGameRecord;
import kr.ac.kopo.strike.model.Game;

@Service
public class FranchiseePageServiceImpl implements FranchiseePageService {

	@Autowired
	FranchiseePageDao dao;

	@Override
	public List<Game> game(String address) {
		return dao.game(address);
	}

	@Override
	public List<GameRecord> gameRecord(int game_code) {
		return dao.gameRecord(game_code);
	}

	@Override
	public void makerWin(int maker_code) {
		dao.makerWin(maker_code);
	}

	@Override
	public void challengerWin(int challenger_code) {
		dao.challengerWin(challenger_code);
	}

	@Override
	public void challengerLose(int challenger_code) {
		dao.challengerLose(challenger_code);
	}

	@Override
	public void makerLose(int maker_code) {
		dao.makerLose(maker_code);
	}

	@Override
	public void draw(int maker_code, int challenger_code) {
		dao.draw(maker_code, challenger_code);
	}

	@Override
	public void makerWinGameRecord(int game_record_code, int maker_code, int challenger_code) {
		dao.makerWinGameRecord(game_record_code, maker_code, challenger_code);
	}

	@Override
	public void challengerWinGameRecord(int game_record_code, int challenger_code, int maker_code) {
		dao.challengerWinGameRecord(game_record_code, challenger_code, maker_code);
	}

	@Override
	public void drawGameRecord(int game_record_code) {
		dao.drawGameRecord(game_record_code);
	}

	@Override
	public List<GameRecord> gameRecordEnd(int game_code) {
		return dao.gameRecordEnd(game_code);
	}

	@Override
	public List<ClanGame> clanGame(String address) {
		return dao.clanGame(address);
	}

	@Override
	public List<ClanGameRecord> clanGameRecord(int clan_game_code) {
		return dao.clanGameRecord(clan_game_code);
	}

	@Override
	public List<ClanGameRecord> clanGameRecordEnd(int clan_game_code) {
		return dao.clanGameRecordEnd(clan_game_code);
	}

	@Override
	public void clanMakerWin(int clan_maker_code) {
		dao.clanMakerWin(clan_maker_code);
	}

	@Override
	public void clanChallengerLose(int challenger_clan_code) {
		dao.clanChallengerLose(challenger_clan_code);
	}

	@Override
	public void clanMakerWinGameRecord(int clan_game_record_code, int clan_maker_code, int challenger_clan_code) {
		dao.clanMakerWinGameRecord(clan_game_record_code, clan_maker_code, challenger_clan_code);
	}

	@Override
	public void clanChallengerWin(int challenger_clan_code) {
		dao.clanChallengerWin(challenger_clan_code);
	}

	@Override
	public void clanMakerLose(int clan_maker_code) {
		dao.clanMakerLose(clan_maker_code);
	}

	@Override
	public void clanChallengerWinGameRecord(int clan_game_record_code, int challenger_clan_code, int clan_maker_code) {
		dao.clanChallengerWinGameRecord(clan_game_record_code, challenger_clan_code, clan_maker_code);
	}

	@Override
	public void clanDraw(int clan_maker_code, int challenger_clan_code) {
		dao.clanDraw(clan_maker_code, challenger_clan_code);
	}

	@Override
	public void clanDrawGameRecord(int clan_game_record_code) {
		dao.clanDrawGameRecord(clan_game_record_code);
	}

	@Override
	public List<GameRecord> mypageRecord() {
		return dao.mypageRecord();
	}

	@Override
	public List<ClanGameRecord> mypageClanRecord() {
		return dao.mypageClanRecord();
	}

}
