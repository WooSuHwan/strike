package kr.ac.kopo.strike.service;

import kr.ac.kopo.strike.model.Member;

public interface MemberService {

	boolean confirm(String id);

	void add(Member member);

	Member item(Member member);

	void update(Member item);

	Member mypage(Member item);

	void delete(int member_code);

	void deleteClan(int member_code);

	void deleteMember(int member_code);

}
