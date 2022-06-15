package kr.ac.kopo.strike.model;

import java.util.Date;

public class Clan {
	private int clan_code;
	private int clan_master_code;
	private String clan_name;
	private int clan_record;
	private int clan_win;
	private int clan_lose;
	private int clan_draw;
	private int clan_rate;
	private int clan_score;
	private Date time;
	// member
	private String name;
	// 승률
	private float percent; // 밑줄은 무시

	public float getPercent() {
		
		if (clan_record == 0) {
			percent = 0;
		} else {
			percent = (float)clan_win / (float)clan_record * 100;
		}
		
		return percent;
	}
	
	public int getClan_score() {
		return clan_score;
	}

	public void setClan_score(int clan_score) {
		this.clan_score = clan_score;
	}

	public int getClan_master_code() {
		return clan_master_code;
	}

	public void setClan_master_code(int clan_master_code) {
		this.clan_master_code = clan_master_code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getClan_code() {
		return clan_code;
	}

	public void setClan_code(int clan_code) {
		this.clan_code = clan_code;
	}

	public String getClan_name() {
		return clan_name;
	}

	public void setClan_name(String clan_name) {
		this.clan_name = clan_name;
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

	public int getClan_lose() {
		return clan_lose;
	}

	public void setClan_lose(int clan_lose) {
		this.clan_lose = clan_lose;
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

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

}