package kr.ac.kopo.strike.model;

import java.util.Date;

public class ClanGameRecord {
	private int clan_game_record_code;
	private int clan_game_code;
	private int clan_challenger_code;
	private int clan_maker_code;
	private int winner_code;
	private int loser_code;
	private int draw;
	private Date time_end;
	// clan
	private String clan_challenger_name;
	private String clan_name;

	public int getClan_game_record_code() {
		return clan_game_record_code;
	}

	public void setClan_game_record_code(int clan_game_record_code) {
		this.clan_game_record_code = clan_game_record_code;
	}

	public int getClan_game_code() {
		return clan_game_code;
	}

	public void setClan_game_code(int clan_game_code) {
		this.clan_game_code = clan_game_code;
	}

	public int getClan_challenger_code() {
		return clan_challenger_code;
	}

	public void setClan_challenger_code(int clan_challenger_code) {
		this.clan_challenger_code = clan_challenger_code;
	}

	public int getClan_maker_code() {
		return clan_maker_code;
	}

	public void setClan_maker_code(int clan_maker_code) {
		this.clan_maker_code = clan_maker_code;
	}

	public int getWinner_code() {
		return winner_code;
	}

	public void setWinner_code(int winner_code) {
		this.winner_code = winner_code;
	}

	public int getLoser_code() {
		return loser_code;
	}

	public void setLoser_code(int loser_code) {
		this.loser_code = loser_code;
	}

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public Date getTime_end() {
		return time_end;
	}

	public void setTime_end(Date time_end) {
		this.time_end = time_end;
	}

	public String getClan_challenger_name() {
		return clan_challenger_name;
	}

	public void setClan_challenger_name(String clan_challenger_name) {
		this.clan_challenger_name = clan_challenger_name;
	}

	public String getClan_name() {
		return clan_name;
	}

	public void setClan_name(String clan_name) {
		this.clan_name = clan_name;
	}
}
