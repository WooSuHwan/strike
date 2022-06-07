package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.GameRecord;
import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.model.ClanGameRecord;
import kr.ac.kopo.strike.model.Game;

public interface FranchiseePageService {

	List<Game> game(String address);

	List<GameRecord> gameRecord(int game_code);
	
	List<GameRecord> gameRecordEnd(int game_code);

	void makerWin(int maker_code);

	void challengerWin(int challenger_code);

	void challengerLose(int challenger_code);

	void makerLose(int maker_code);

	void draw(int maker_code, int challenger_code);

	void makerWinGameRecord(int game_record_code, int maker_code, int challenger_code);

	void challengerWinGameRecord(int game_record_code, int challenger_code, int maker_code);

	void drawGameRecord(int game_record_code);

	List<ClanGame> clanGame(String address);

	List<ClanGameRecord> clanGameRecord(int clan_game_code);

	List<ClanGameRecord> clanGameRecordEnd(int clan_game_code);

	void clanMakerWin(int clan_maker_code);

	void clanChallengerLose(int challenger_clan_code);

	void clanMakerWinGameRecord(int clan_game_record_code, int clan_maker_code, int challenger_clan_code);

	void clanChallengerWin(int challenger_clan_code);

	void clanMakerLose(int clan_maker_code);

	void clanChallengerWinGameRecord(int clan_game_record_code, int challenger_clan_code, int clan_maker_code);

	void clanDraw(int clan_maker_code, int challenger_clan_code);

	void clanDrawGameRecord(int clan_game_record_code);

}
