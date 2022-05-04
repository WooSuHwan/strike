package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.ChallengerMember;
import kr.ac.kopo.strike.model.Game;

public interface ChallengerDao {

	List<ChallengerMember> list(int game_code);

	void add(int game_code, int member_code);

	void permission(int game_code, int member_code);

	void delete(int member_code);

	List<Game> makerItem(int game_code);

}
