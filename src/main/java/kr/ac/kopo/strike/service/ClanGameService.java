package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanChallenger;
import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.util.Pager;

public interface ClanGameService {

	List<ClanGame> list(Pager pager);

	void add(ClanGame clanGame);

	ClanGame item(int clan_game_code);

	Clan clanItem(int clan_code);

	List<ClanChallenger> admitClanChallenger(int clan_game_code);

	List<ClanChallenger> challenger(int clan_game_code);

	void challenge(int clan_game_code, int clan_code);

	void permission(int clan_game_code, int clan_challenger_code);

	void addClanGame(int clan_game_code, int clan_challenger_code, int clan_code);
	/**
	boolean confirm(int clan_code, int clan_game_code);
	*/
	int confirm(int clan_game_code, int clan_code);

	int compare(int clan_game_code, int member_code);
	
	List<ClanGame> mypageClanGame(Pager pager);
}
