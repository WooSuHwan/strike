package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.FranchiseeGame;
import kr.ac.kopo.strike.model.Game;

public interface FranchiseePageService {

	List<Game> game(String address);

	List<FranchiseeGame> franchiseeGame(int game_code);

	void makerWin(int member_code);

	void challengerWin(int challenger_code);

	void challengerLose(int challenger_code);

	void makerLose(int member_code);

}
