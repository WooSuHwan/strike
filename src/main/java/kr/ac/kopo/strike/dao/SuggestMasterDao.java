package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.SuggestMaster;
import kr.ac.kopo.strike.util.Pager;

public interface SuggestMasterDao {

	List<SuggestMaster> list(Pager pager);

	void add(SuggestMaster item);

	void delete(int master_code);

	

	void addCount(int master_code);

	SuggestMaster read(int master_code) throws Exception;

	SuggestMaster item(int master_code);

	int total(Pager pager);

	void update(SuggestMaster item);

}
