package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.Pager;

public interface RankService {

	List<Member> list(Pager pager);

	List<Member> rankList();

}
