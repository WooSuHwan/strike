package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.FranchiseeGame;
import kr.ac.kopo.strike.model.Game;

public interface FranchiseePageDao {

	List<Game> game(String address);

	List<FranchiseeGame> franchiseeGame(int game_code);

	void makerWin(int member_code);

	void challengerWin(int challenger_code);

	void challengerLose(int challenger_code);

	void makerLose(int member_code);

	void makerWinGameRecord(int game_code, int member_code, int challenger_code);

	void challengerWinGameRecord(int game_code, int challenger_code, int member_code);

	void draw(int member_code, int challenger_code);

	void drawGameRecord(int game_code, int member_code, int challenger_code);

}
