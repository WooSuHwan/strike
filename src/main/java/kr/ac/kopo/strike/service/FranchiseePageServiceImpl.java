package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseePageDao;
import kr.ac.kopo.strike.model.FranchiseeGame;
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
	public List<FranchiseeGame> franchiseeGame(int game_code) {
		return dao.franchiseeGame(game_code);
	}

	@Override
	public void makerWin(int member_code) {
		dao.makerWin(member_code);
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
	public void makerLose(int member_code) {
		dao.makerLose(member_code);
	}

	@Override
	public void makerWinGameRecord(int game_code, int member_code, int challenger_code) {
		dao.makerWinGameRecord(game_code, member_code, challenger_code);
	}

	@Override
	public void challengerWinGameRecord(int game_code, int challenger_code, int member_code) {
		dao.challengerWinGameRecord(game_code, challenger_code, member_code);
	}

	@Override
	public void draw(int member_code, int challenger_code) {
		dao.draw(member_code, challenger_code);
	}

	@Override
	public void drawGameRecord(int game_code, int member_code, int challenger_code) {
		dao.drawGameRecord(game_code, member_code, challenger_code);
	}

}
