package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;

public interface GameService {

	List<Game> list();

	void add(Game game);

	void delete(int game_code);

	void update(Game item);

	Game item(int game_code);

	List<Game> view(int game_code);

	List<Challenger> challenger(int game_code);

	void challenge(int game_code, int member_code);

	void permission(int game_code, int challenger_code);

	List<Member> member(int game_code);

	List<Franchisee> location();

	void addGame(int game_code, int challenger_member_code, int member_code);
	
}
