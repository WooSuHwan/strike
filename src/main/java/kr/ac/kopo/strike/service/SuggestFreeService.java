package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.model.SuggestFree;
import kr.ac.kopo.strike.util.Pager;

public interface SuggestFreeService {
	
	List<SuggestFree> list(Pager pager);
		
	List<SuggestFree> list();

	void add(SuggestFree item);

	void delete(int free_code);

	SuggestFree item(int free_code);

	void update(SuggestFree item);

	public SuggestFree read(int free_code) throws Exception;

	void addCount(int free_code);

	List<SuggestFree> mypageFreeList();

	

	




	

	

	

}
