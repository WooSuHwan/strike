package kr.ac.kopo.strike.model;

import java.util.Date;

public class ClanChallenger {
	private int clan_challenger_code;
	private int clan_code;
	private int clan_game_code;
	private int state;
	private Date time;
	// clan
	private int challenger_clan_code;
	private int clan_master_code;
	private String clan_name;
	private int record;
	private int clan_win;
	private int clan_lose;
	private int clan_draw;
	private int clan_rate;
	private int clan_score;
	private Date clan_time;

	public int getClan_challenger_code() {
		return clan_challenger_code;
	}

	public void setClan_challenger_code(int clan_challenger_code) {
		this.clan_challenger_code = clan_challenger_code;
	}

	public int getClan_code() {
		return clan_code;
	}

	public void setClan_code(int clan_code) {
		this.clan_code = clan_code;
	}

	public int getClan_game_code() {
		return clan_game_code;
	}

	public void setClan_game_code(int clan_game_code) {
		this.clan_game_code = clan_game_code;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public int getChallenger_clan_code() {
		return challenger_clan_code;
	}

	public void setChallenger_clan_code(int challenger_clan_code) {
		this.challenger_clan_code = challenger_clan_code;
	}

	public int getClan_master_code() {
		return clan_master_code;
	}

	public void setClan_master_code(int clan_master_code) {
		this.clan_master_code = clan_master_code;
	}

	public String getClan_name() {
		return clan_name;
	}

	public void setClan_name(String clan_name) {
		this.clan_name = clan_name;
	}

	public int getRecord() {
		return record;
	}

	public void setRecord(int record) {
		this.record = record;
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

	public int getClan_score() {
		return clan_score;
	}

	public void setClan_score(int clan_score) {
		this.clan_score = clan_score;
	}

	public Date getClan_time() {
		return clan_time;
	}

	public void setClan_time(Date clan_time) {
		this.clan_time = clan_time;
	}

}
