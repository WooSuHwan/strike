package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.model.SuggestFree;
import kr.ac.kopo.strike.util.Pager;

public interface SuggestFreeDao {

	List<SuggestFree> list(Pager pager);

	void add(SuggestFree item);

	void delete(int free_code);

	SuggestFree item(int free_code);

	void update(SuggestFree item);

	public  SuggestFree read(int free_code)throws Exception;

	void addCount(int free_code);

	int total(Pager pager);

	List<SuggestFree> mypageFreeList();
	
	




	

}
