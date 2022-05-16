package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.SuggestMaster;

public interface SuggestMasterDao {

	List<SuggestMaster> list();

	void add(SuggestMaster item);

	void delete(int masterCode);

	void update(SuggestMaster item);

	void addCount(int masterCode);

	SuggestMaster read(int masterCode) throws Exception;

	SuggestMaster item(int masterCode);

}
