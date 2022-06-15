package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.PagerMember;

public interface RankService {

	List<Member> list(PagerMember pagerMember);

	List<Member> rankList();

}
