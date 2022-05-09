package kr.ac.kopo.strike.model;

public class Clan {
	private int clan_code;
	private int member_code;
	private String clan_name;
	private String clan_master;
	private int clan_record;
	private int clan_win;
	private int clan_lost;
	private int clan_draw;
	private int clan_rate;

	public int getClan_code() {
		return clan_code;
	}

	public void setClan_code(int clan_code) {
		this.clan_code = clan_code;
	}

	public int getMember_code() {
		return member_code;
	}

	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}

	public String getClan_name() {
		return clan_name;
	}

	public void setClan_name(String clan_name) {
		this.clan_name = clan_name;
	}

	public String getClan_master() {
		return clan_master;
	}

	public void setClan_master(String clan_master) {
		this.clan_master = clan_master;
	}

	public int getClan_record() {
		return clan_record;
	}

	public void setClan_record(int clan_record) {
		this.clan_record = clan_record;
	}

	public int getClan_win() {
		return clan_win;
	}

	public void setClan_win(int clan_win) {
		this.clan_win = clan_win;
	}

	public int getClan_lost() {
		return clan_lost;
	}

	public void setClan_lost(int clan_lost) {
		this.clan_lost = clan_lost;
	}

	public int getClan_draw() {
		return clan_draw;
	}

	public void setClan_draw(int clan_draw) {
		this.clan_draw = clan_draw;
	}

	public int getClan_rate() {
		return clan_rate;
	}

	public void setClan_rate(int clan_rate) {
		this.clan_rate = clan_rate;
	}

}
