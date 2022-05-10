package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Challenger;

public interface ChallengerDao {

	List<Challenger> list(int game_code);

	void add(int game_code, int member_code);

	void permission(int game_code, int member_code);

}
