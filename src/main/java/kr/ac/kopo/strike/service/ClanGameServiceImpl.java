package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanGameDao;
import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanChallenger;
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
	public Clan clanItem(int clan_code) {
		return dao.clanItem(clan_code);
	}

	@Override
	public List<ClanChallenger> admitClanChallenger(int clan_game_code) {
		return dao.admitClanChallenger(clan_game_code);
	}

	@Override
	public List<ClanChallenger> challenger(int clan_game_code) {
		return dao.challenger(clan_game_code);
	}

	@Override
	public void challenge(int clan_game_code, int clan_code) {
		dao.challenge(clan_game_code, clan_code);
	}

	@Override
	public void permission(int clan_game_code, int clan_challenger_code) {
		dao.permission(clan_game_code, clan_challenger_code);
	}

	@Override
	public void addClanGame(int clan_game_code, int clan_challenger_code, int clan_code) {
		dao.addClanGame(clan_game_code, clan_challenger_code, clan_code);
	}
	
}
