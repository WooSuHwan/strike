package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.PagerMember;

public interface RankDao {

	List<Member> list(PagerMember pagerMember);

	List<Member> rankList();

	int total(PagerMember pagerMember);

}
