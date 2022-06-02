package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseeLoginDao;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

@Service
public class FranchiseeLoginServiceImpl implements FranchiseeLoginService {

	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	FranchiseeLoginDao dao;
	
	@Override
	public Franchisee check(String id, String pw) {
		
		String encryptedId = aes256.encrypt(id);
		String encryptedPw = sha256.encrypt(pw);
		
		Franchisee franchisee = dao.check(encryptedId, encryptedPw);
		if(franchisee == null) {
			return null;
		} else {
			franchisee.setName(aes256.decrypt(franchisee.getName()));
			return franchisee;
		}
		
	}

}
