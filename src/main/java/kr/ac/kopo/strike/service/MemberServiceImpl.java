package kr.ac.kopo.strike.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.MemberDao;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

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
	
	@Override
	public Member item(Member member) {
		
		Member item = dao.item(member);
		
		member.setName(aes256.decrypt(item.getName()));
		member.setBirth(aes256.decrypt(item.getBirth()));
		member.setId(aes256.decrypt(item.getId()));
		member.setTel(aes256.decrypt(item.getTel()));
		
			return dao.item(member);	
	}

	@Override
	public void update(Member item) {
		
//		item.setId(aes256.encrypt(item.getId())); 
		item.setName(aes256.encrypt(item.getName()));
		item.setBirth(aes256.encrypt(item.getBirth()));
		item.setTel(aes256.encrypt(item.getTel()));
		
//		item.setPw(sha256.encrypt(item.getPw()));
		
		dao.update(item);
	}

	@Override
	public void delete(int member_code) {
		dao.delete(member_code);
	}

	@Override
	public Member mypage(Member item) {
		
			Member member = dao.mypage(item);
			
			item.setName(aes256.decrypt(member.getName()));
			item.setBirth(aes256.decrypt(member.getBirth()));
			item.setId(aes256.decrypt(member.getId()));
//			item.setPw(sha256.encrypt(member.getPw()));
			item.setTel(aes256.decrypt(member.getTel()));
			
			return dao.mypage(item);
		
	}

}
