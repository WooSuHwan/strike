package kr.ac.kopo.strike.service;

import kr.ac.kopo.strike.model.Member;

public interface LoginService {
	
	Member check(String id, String pw);

}
