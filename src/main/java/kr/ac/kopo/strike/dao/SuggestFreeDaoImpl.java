package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.model.SuggestFree;

@Repository
public class SuggestFreeDaoImpl implements SuggestFreeDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<SuggestFree> list() {
		return sql.selectList("suggestfree.list");
	}

	@Override
	public void add(SuggestFree item) {
		sql.insert("suggestfree.add", item);
		
	}

	@Override
	public void delete(int free_code) {
		sql.delete("suggestfree.delete", free_code);
		
	}
	
	@Override
	public SuggestFree item(int free_code) {
		
		return sql.selectOne("suggestfree.item", free_code);
	}

	@Override
	public void update(SuggestFree item) {
		sql.update("suggestfree.update", item);
		
	}

	@Override
	public SuggestFree read(int free_code) throws Exception {
		
		return sql.selectOne("suggestfree.read", free_code);
	}

	@Override
	public void addCount(int free_code) {
		sql.update("suggestfree.addcount", free_code);
		
	}
	


	

	

}
