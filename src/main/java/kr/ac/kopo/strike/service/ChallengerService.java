package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Challenger;

public interface ChallengerService {

	List<Challenger> list(int game_code);

	void add(int game_code, int member_code);

	void permission(int game_code, int member_code);

}
