package kr.ac.kopo.strike.model;

import java.util.Date;

public class ClanGame {
	private int clan_game_code;
	private int member_code;
	private int clan_code;
	private String clan_maker;
	private String title;
	private String clock;
	private String loc;
	private int clan_recruit;
	private String story;
	private String style;
	private Date time;
	// clan
	private int challenger_clan_code;
	private int clan_master_code;
	private String clan_name;
	private int clan_record;
	private int clan_win;
	private int clan_lose;
	private int clan_draw;
	private int clan_rate;
	private int clan_score;
	private Date clan_time;

	public int getClan_score() {
		return clan_score;
	}

	public void setClan_score(int clan_score) {
		this.clan_score = clan_score;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getClan_name() {
		return clan_name;
	}

	public void setClan_name(String clan_name) {
		this.clan_name = clan_name;
	}

	public String getClan_maker() {
		return clan_maker;
	}

	public void setClan_maker(String clan_maker) {
		this.clan_maker = clan_maker;
	}

	public int getClan_game_code() {
		return clan_game_code;
	}

	public void setClan_game_code(int clan_game_code) {
		this.clan_game_code = clan_game_code;
	}

	public int getMember_code() {
		return member_code;
	}

	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}

	public int getClan_code() {
		return clan_code;
	}

	public void setClan_code(int clan_code) {
		this.clan_code = clan_code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getClock() {
		return clock;
	}

	public void setClock(String clock) {
		this.clock = clock;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public int getClan_recruit() {
		return clan_recruit;
	}

	public void setClan_recruit(int clan_recruit) {
		this.clan_recruit = clan_recruit;
	}

	public String getStory() {
		return story;
	}

	public void setStory(String story) {
		this.story = story;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}
