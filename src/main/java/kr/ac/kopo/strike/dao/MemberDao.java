package kr.ac.kopo.strike.dao;

import kr.ac.kopo.strike.model.Member;

public interface MemberDao {

	void add(Member member);

	int idCount(String id);

}
