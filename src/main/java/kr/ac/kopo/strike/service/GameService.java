package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Game;

public interface GameService {

	List<Game> list();

	void add(Game game);

	void delete(int game_code);

	void update(Game item);

	Game item(int game_code);

	List<Game> view(int game_code);

}
