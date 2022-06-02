package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.GameRecord;
import kr.ac.kopo.strike.model.Game;

public interface FranchiseePageService {

	List<Game> game(String address);

	List<GameRecord> gameRecord(int game_code);

	void makerWin(int maker_code);

	void challengerWin(int challenger_code);

	void challengerLose(int challenger_code);

	void makerLose(int maker_code);

	void draw(int maker_code, int challenger_code);

	void makerWinGameRecord(int game_record_code, int maker_code, int challenger_code);

	void challengerWinGameRecord(int game_record_code, int challenger_code, int maker_code);

	void drawGameRecord(int game_record_code);

	List<GameRecord> gameRecordEnd(int game_code);

}
