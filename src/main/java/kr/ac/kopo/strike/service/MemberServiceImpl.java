package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.MemberDao;
import kr.ac.kopo.strike.model.Member;
import kr.co.kopo.strike.util.AES256Util;
import kr.co.kopo.strike.util.SHA256Util;

@Service
public class MemberServiceImpl implements MemberService {
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	MemberDao dao;
	
	@Override
	public boolean confirm(String id) {
		
		AES256Util aes256 = new AES256Util();
		
		int count = dao.idCount(aes256.encrypt(id));
		
				if(count > 0) {
					return true;
				} else {
					return false;	
				}
			}

	@Override
	public void add(Member member) {
		
		member.setId(aes256.encrypt(member.getId())); 
		member.setName(aes256.encrypt(member.getName()));
		member.setBirth(aes256.encrypt(member.getBirth()));
		member.setTel(aes256.encrypt(member.getTel()));
		
		member.setPw(sha256.encrypt(member.getPw()));
		
		dao.add(member);
	}

}
