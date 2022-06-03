package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanGameDao;
import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanGame;

@Service
public class ClanGameServiceImpl implements ClanGameService {
	
	@Autowired
	ClanGameDao dao;

	@Override
	public List<ClanGame> list() {
		return dao.list();
	}

	@Override
	public void add(ClanGame clanGame) {
		dao.add(clanGame);
	}

	@Override
	public ClanGame item(int clan_game_code) {
		return dao.item(clan_game_code);
	}

	@Override
	public List<Clan> clan(int clan_game_code) {
		return clan(clan_game_code);
	}
	
}
