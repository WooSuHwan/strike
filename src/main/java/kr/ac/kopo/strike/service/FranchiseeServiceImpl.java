package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.FranchiseeDao;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

@Service
public class FranchiseeServiceImpl implements FranchiseeService {

	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	FranchiseeDao dao;
	
	@Override
	public boolean confirm(String franchisee_id) {
		
		AES256Util aes256 = new AES256Util();
		
		int count = dao.idCount(aes256.encrypt(franchisee_id));
		
		if(count > 0) {
			return true;
		} else {
			return false;	
		}
	}

	@Override
	public void add(Franchisee franchisee) {
		
		franchisee.setId(aes256.encrypt(franchisee.getId())); 
		franchisee.setName(aes256.encrypt(franchisee.getName()));
		franchisee.setBirth(aes256.encrypt(franchisee.getBirth()));
		franchisee.setTel(aes256.encrypt(franchisee.getTel()));
		
		franchisee.setPw(sha256.encrypt(franchisee.getPw()));
		
		dao.add(franchisee);
	}

}
