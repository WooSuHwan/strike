package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.ChallengerMember;

public interface ChallengerService {

	List<ChallengerMember> list(int game_code);

	void add(int game_code, int member_code);

}
