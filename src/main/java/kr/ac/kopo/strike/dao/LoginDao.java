package kr.ac.kopo.strike.dao;

import kr.ac.kopo.strike.model.Member;

public interface LoginDao {

	Member check(String encryptedId, String encryptedPw);

}
