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
	public void delete(int freeCode) {
		sql.delete("suggestfree.delete", freeCode);
		
	}
	
	@Override
	public SuggestFree item(int freeCode) {
		
		return sql.selectOne("suggestfree.item", freeCode);
	}

	@Override
	public void update(SuggestFree item) {
		sql.update("suggestfree.update", item);
		
	}

	@Override
	public SuggestFree read(int freeCode) throws Exception {
		
		return sql.selectOne("suggestfree.read", freeCode);
	}

	@Override
	public void addCount(int freeCode) {
		sql.update("suggestfree.addcount", freeCode);
		
	}
	


	

	

}
