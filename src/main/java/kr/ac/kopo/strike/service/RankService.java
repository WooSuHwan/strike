package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.Member;

public interface RankService {

	List<Member> list();

	List<Member> rankList();

}
