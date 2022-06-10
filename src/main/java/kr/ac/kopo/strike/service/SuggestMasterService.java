package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.SuggestMaster;
import kr.ac.kopo.strike.util.Pager;

public interface SuggestMasterService {

	List<SuggestMaster> list(Pager pager);

	List<SuggestMaster> list();
	
	void add(SuggestMaster item);

	void delete(int master_code);

	void update(SuggestMaster item);

	void addCount(int master_code);

	public SuggestMaster read(int master_code)throws Exception;

	SuggestMaster item(int master_code);

}
