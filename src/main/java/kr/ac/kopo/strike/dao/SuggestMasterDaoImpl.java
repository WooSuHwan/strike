<<<<<<< HEAD
package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.SuggestMaster;

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
	public void delete(int masterCode) {
		sql.delete("suggestmaster.delete", masterCode);

	}

	@Override
	public void update(SuggestMaster item) {
		sql.update("suggestmaster.update", item);

	}

	@Override
	public void addCount(int masterCode) {
		sql.update("suggestmaster.addcount", masterCode);

	}

	@Override
	public SuggestMaster read(int masterCode) throws Exception{
		
		return sql.selectOne("suggestmaster.read", masterCode);
	}

	@Override
	public SuggestMaster item(int masterCode) {
		
		return sql.selectOne("suggestmaster.item", masterCode);
	}

}
=======
package kr.ac.kopo.strike.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.SuggestMaster;

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
	public void delete(int masterCode) {
		sql.delete("suggestmaster.delete", masterCode);

	}

	@Override
	public void update(SuggestMaster item) {
		sql.update("suggestmaster.update", item);

	}

	@Override
	public void addCount(int masterCode) {
		sql.update("suggestmaster.addcount", masterCode);

	}

	@Override
	public SuggestMaster read(int masterCode) throws Exception{
		
		return sql.selectOne("suggestmaster.read", masterCode);
	}

	@Override
	public SuggestMaster item(int masterCode) {
		
		return sql.selectOne("suggestmaster.item", masterCode);
	}

}
>>>>>>> refs/heads/WSH
