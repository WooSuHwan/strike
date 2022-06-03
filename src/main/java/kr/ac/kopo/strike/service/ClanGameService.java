package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanGame;

public interface ClanGameService {

	List<ClanGame> list();

	void add(ClanGame clanGame);

	ClanGame item(int clan_game_code);

	List<Clan> clan(int clan_game_code);

}
