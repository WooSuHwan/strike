package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Game;

@Repository
public class GameDaoImpl implements GameDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Game> list() {
		return sql.selectList("game.list");
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

}
