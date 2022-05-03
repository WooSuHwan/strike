package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.model.SuggestFree;

public interface SuggestFreeDao {

	List<SuggestFree> list();

	void add(SuggestFree item);

	void delete(int freeCode);

	SuggestFree item(int freeCode);

	void update(SuggestFree item);

	public  SuggestFree read(int freeCode)throws Exception;

	void addCount(int freeCode);
	
	




	

}
