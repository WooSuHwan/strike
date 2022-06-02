<<<<<<< HEAD
package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.SuggestMaster;

public interface SuggestMasterService {

	List<SuggestMaster> list();

	void add(SuggestMaster item);

	void delete(int masterCode);

	void update(SuggestMaster item);

	void addCount(int masterCode);

	public SuggestMaster read(int masterCode)throws Exception;

	SuggestMaster item(int masterCode);

}
=======
package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.SuggestMaster;

public interface SuggestMasterService {

	List<SuggestMaster> list();

	void add(SuggestMaster item);

	void delete(int masterCode);

	void update(SuggestMaster item);

	void addCount(int masterCode);

	public SuggestMaster read(int masterCode)throws Exception;

	SuggestMaster item(int masterCode);

}
>>>>>>> refs/heads/WSH
