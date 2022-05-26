package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.FranchiseeGame;
import kr.ac.kopo.strike.model.Game;

public interface FranchiseePageService {

	List<Game> game(String address);

	List<FranchiseeGame> franchiseeGame(int game_code);

}
