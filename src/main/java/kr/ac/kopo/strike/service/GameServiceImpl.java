package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.GameDao;
import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.Pager;

@Service
public class GameServiceImpl implements GameService {

	@Autowired
	GameDao dao;

	@Override
	public List<Game> list(Pager pager) {

		int total = dao.total(pager);

		pager.setTotal(total);

		return dao.list(pager);
	}

	@Override
	public void add(Game game) {
		dao.add(game);
	}

	@Override
	public void delete(int game) {
		dao.delete(game);
	}

	@Override
	public void update(Game item) {
		dao.update(item);
	}

	@Override
	public Game item(int game_code) {
		return dao.item(game_code);
	}

	@Override
	public List<Game> view(int game_code) {
		return dao.view(game_code);
	}

	@Override
	public List<Challenger> challenger(int game_code) {
		return dao.challenger(game_code);
	}

	@Override
	public void challenge(int game_code, int member_code) {
		dao.challenge(game_code, member_code);
	}

	@Override
	public void permission(int game_code, int challenger_code) {
		dao.permission(game_code, challenger_code);
	}

	@Override
	public List<Member> member(int game_code) {
		return dao.member(game_code);
	}

	@Override
	public List<Franchisee> location() {
		return dao.location();
	}

	@Override
	public void addGame(int game_code, int challenger_member_code, int member_code) {
		dao.addGame(game_code, challenger_member_code, member_code);
	}

	@Override
	public List<Game> mypageGame(Pager pager) {
		return dao.mypageGame(pager);
	}

	@Override
	public List<Challenger> admitChallenger(int game_code) {
		return dao.admitChallenger(game_code);
	}

	@Override
	public List<Franchisee> franchiseeList() {
		return dao.franchiseeList();
	}

}
