package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.LoginDao;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

@Service
public class LoginServiceImpl implements LoginService {

	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	LoginDao dao;
	
	@Override
	public Member check(String id, String pw) {
		String encryptedId = aes256.encrypt(id);
		String encryptedPw = sha256.encrypt(pw);
		
		Member member = dao.check(encryptedId, encryptedPw);
		if(member == null) {
			return null;
		} else {
			member.setName(aes256.decrypt(member.getName()));
			return member;
		}

	}

}