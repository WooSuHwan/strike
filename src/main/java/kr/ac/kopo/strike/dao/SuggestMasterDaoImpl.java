package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.SuggestMaster;
import kr.ac.kopo.strike.util.Pager;

@Repository
public class SuggestMasterDaoImpl implements SuggestMasterDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<SuggestMaster> list() {
		
		return sql.selectList("suggestmaster.list");
	}

	@Override
	public void add(SuggestMaster item) {
		sql.insert("suggestmaster.add", item);

	}

	@Override
	public void delete(int master_code) {
		sql.delete("suggestmaster.delete", master_code);

	}

	@Override
	public void update(SuggestMaster item) {
		sql.update("suggestmaster.update", item);

	}

	@Override
	public void addCount(int master_code) {
		sql.update("suggestmaster.addcount", master_code);

	}

	@Override
	public SuggestMaster read(int master_code) throws Exception{
		
		return sql.selectOne("suggestmaster.read", master_code);
	}

	@Override
	public SuggestMaster item(int master_code) {
		
		return sql.selectOne("suggestmaster.item", master_code);
	}

	@Override
	public int total(Pager pager) {
		
		return sql.selectOne("suggestfree.total",pager);
	}

}
