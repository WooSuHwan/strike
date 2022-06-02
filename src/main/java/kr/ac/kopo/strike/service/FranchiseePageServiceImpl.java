package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseePageDao;
import kr.ac.kopo.strike.model.GameRecord;
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

}
