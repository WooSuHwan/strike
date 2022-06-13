package kr.ac.kopo.strike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.strike.dao.ClanDao;
import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanMember;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.Pager;
import kr.ac.kopo.strike.util.SHA256Util;

@Service
public class ClanServiceImpl implements ClanService {

	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	ClanDao dao;

	@Override
	public List<Clan> list(Pager pager) {

		int total = dao.total(pager);

		pager.setTotal(total);

		return dao.list(pager);
	}

	@Override
	public void add(Clan clan) {
		dao.add(clan);
	}

	@Override
	public Clan item(int member_code) {
		
		Clan item = dao.item(member_code);
		
		item.setName(aes256.decrypt(item.getName()));
		System.out.println(item.getName());
		return item;
	}

	@Override
	public void update(Clan item) {
		dao.update(item);
	}

	@Override
	public void delete(int member_code) {
		dao.delete(member_code);
	}

	@Override
	public List<ClanMember> wait(int clan_code) {
		return dao.wait(clan_code);
	}

	@Override
	public List<Clan> clan(int clan_code) {
		return dao.clan(clan_code);
	}

	@Override
	public List<ClanMember> clanMember(int clan_code) {
		return dao.clanMember(clan_code);
	}

	@Override
	public void change(int member_code, int clan_code) {
		dao.change(member_code, clan_code);
	}

	@Override
	public Clan get(int member_code) {
		return dao.get(member_code);
	}

	@Override
	public void application(int clan_code, int member_code) {
		dao.application(clan_code, member_code);
	}

	@Override
	public void permission(int clan_code, int clan_member_code) {
		dao.permission(clan_code, clan_member_code);
	}

	@Override
	public ClanMember getMember(int clan_member_code) {
		return dao.getMember(clan_member_code);
	}

	@Override
	public void changeMember(int clan_code, int member_code) {
		dao.changeMember(clan_code, member_code);

	}

	@Override
	public List<Clan> clanList() {
		return dao.clanList();
	}

	@Override
	public int confirm(int clan_code, int member_code) {
		return dao.confirm(clan_code, member_code);
	}

	@Override
	public int check(int clan_code) {
		return dao.check(clan_code);
	}

}
