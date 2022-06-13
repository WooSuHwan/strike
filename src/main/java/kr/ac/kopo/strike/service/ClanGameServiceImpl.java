package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanGameDao;
import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanChallenger;
import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.util.Pager;

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
	/**
	@Override
	public boolean confirm(int clan_code, int clan_game_code) {

		int count = dao.challengeCount(clan_code, clan_game_code);
			
		if(count > 0) {
			return true;
		} else {
			return false;
		}
	}
	*/
	@Override
	public int confirm(int clan_game_code, int clan_code) {
		return dao.confirm(clan_game_code, clan_code);
	}

	@Override
	public int compare(int clan_game_code, int member_code) {
		return dao.compare(clan_game_code, member_code);
	}
	
	@Override
	public List<ClanGame> mypageClanGame(Pager pager) {
		return dao.mypageClanGame(pager);
	}
}
