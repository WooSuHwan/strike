package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanChallenger;
import kr.ac.kopo.strike.model.ClanGame;

public interface ClanGameDao {

	List<ClanGame> list();

	void add(ClanGame clanGame);

	ClanGame item(int clan_game_code);

	Clan clanItem(int clan_code);

	List<ClanChallenger> admitClanChallenger(int clan_game_code);

	List<ClanChallenger> challenger(int clan_game_code);

	void challenge(int clan_game_code, int clan_code);

	void permission(int clan_game_code, int clan_challenger_code);

	void addClanGame(int clan_game_code, int clan_challenger_code, int clan_code);
	/**
	int challengeCount(int clan_code, int clan_game_code);
	*/
	int confirm(int clan_game_code, int clan_code);

	int compare(int clan_game_code, int member_code);
}
