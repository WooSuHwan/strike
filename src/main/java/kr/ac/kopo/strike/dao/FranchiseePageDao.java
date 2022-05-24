package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Game;

public interface FranchiseePageDao {

	List<Game> game(String address);

}
