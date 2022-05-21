package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.Pager;

public interface RankDao {

	List<Member> list(Pager pager);

	List<Member> rankList();

	int total(Pager pager);

}
