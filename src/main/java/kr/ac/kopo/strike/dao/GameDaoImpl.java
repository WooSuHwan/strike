package kr.ac.kopo.strike.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.Pager;

@Repository
public class GameDaoImpl implements GameDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Game> list(Pager pager) {
		return sql.selectList("game.list",pager);
	}

	@Override
	public void add(Game game) {
		sql.insert("game.add", game);
	}

	@Override
	public void delete(int game) {
		sql.delete("game.delete", game);
	}

	@Override
	public void update(Game item) {
		sql.update("game.update", item);
	}

	@Override
	public Game item(int game_code) {
		return sql.selectOne("game.item", game_code);
	}

	@Override
	public List<Game> view(int game_code) {
		return sql.selectList("game.view", game_code);
	}

	@Override
	public List<Challenger> challenger(int game_code) {
		return sql.selectList("game.challenger", game_code);
	}

	@Override
	public void challenge(int game_code, int member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("game_code", game_code);
		map.put("member_code", member_code);
		
		sql.insert("game.challenge", map);
		
	}

	@Override
	public void permission(int game_code, int member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("member_code", member_code);
		map.put("game_code", game_code);
		
		sql.update("game.permission", map);	
	}

	@Override
	public List<Member> member(int game_code) {
		return sql.selectList("game.member", game_code);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("game.total", pager);
	}

	@Override
	public List<Game> mypageGame(Pager pager) {
		return sql.selectList("game.mypageGame",pager);
	}

}
