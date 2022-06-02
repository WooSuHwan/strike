package kr.ac.kopo.strike.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanMember;
import kr.ac.kopo.strike.util.Pager;

@Repository
public class ClanDaoImpl implements ClanDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Clan> list(Pager pager) {
		return sql.selectList("clan.list", pager);
	}

	@Override
	public void add(Clan clan) {
		sql.insert("clan.add", clan);
	}

	@Override
	public Clan item(int clan_code) {
		return sql.selectOne("clan.item", clan_code);
	}

	@Override
	public void update(Clan item) {
		sql.update("clan.update", item);
	}

	@Override
	public void delete(int member_code) {
		sql.delete("clan.delete", member_code);
	}

	@Override
	public List<ClanMember> wait(int clan_code) {
		return sql.selectList("clan.wait", clan_code);
	}

	@Override
	public List<Clan> clan(int clan_code) {
		return sql.selectList("clan.clan", clan_code);
	}

	@Override
	public List<ClanMember> clanMember(int clan_code) {
		return sql.selectList("clan.clanMember", clan_code);
	}
	
	@Override
	public void change(int member_code, int clan_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("member_code", member_code);
		map.put("clan_code", clan_code);
		
		sql.update("clan.change", map);
	}

	@Override
	public Clan get(int member_code) {
		return sql.selectOne("clan.get", member_code);
	}

	@Override
	public void application(int clan_code, int member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("member_code", member_code);
		map.put("clan_code", clan_code);
		
		sql.insert("clan.application", map);
	}

	@Override
	public void permission(int clan_code, int clan_member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("clan_member_code", clan_member_code);
		map.put("clan_code", clan_code);
		
		sql.update("clan.permission", map);
	}

	@Override
	public ClanMember getMember(int clan_member_code) {
		return sql.selectOne("clan.getMember", clan_member_code);
	}

	@Override
	public void changeMember(int clan_code, int member_code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("member_code", member_code);
		map.put("clan_code", clan_code);

		sql.update("clan.changeMember", map);
		
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("clan.total", pager);
	}

	@Override
	public List<Clan> clanList() {
		return sql.selectList("clan.clanList");
	}

}
