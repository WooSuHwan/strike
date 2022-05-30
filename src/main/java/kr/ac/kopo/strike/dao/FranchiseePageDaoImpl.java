package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.FranchiseeGame;
import kr.ac.kopo.strike.model.Game;

@Repository
public class FranchiseePageDaoImpl implements FranchiseePageDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Game> game(String address) {
		return sql.selectList("franchiseePage.game", address);
	}

	@Override
	public List<FranchiseeGame> franchiseeGame(int game_code) {
		return sql.selectList("franchiseePage.franchiseeGame", game_code);
	}

	@Override
	public void makerWin(int member_code) {
		System.out.println(member_code);
		sql.update("franchiseePage.makerWin", member_code);
	}

	@Override
	public void challengerWin(int challenger_code) {
		System.out.println(challenger_code);
		sql.update("franchiseePage.challengerWin", challenger_code);
	}

	@Override
	public void challengerLose(int challenger_code) {
		System.out.println(challenger_code);
		sql.update("franchiseePage.challengerLose", challenger_code);
	}

	@Override
	public void makerLose(int member_code) {
		System.out.println(member_code);
		sql.update("franchiseePage.makerLose", member_code);
	}

}
