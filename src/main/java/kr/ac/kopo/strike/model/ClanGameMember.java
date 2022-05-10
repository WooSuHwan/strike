package kr.ac.kopo.strike.model;

public class ClanGameMember {
	private int clan_game_code;
	private int clan_code;
	private int member_code;
	private String clan_title;
	private String clan_loc;
	private String clan_story;
	private String clan_maker;
	private String clan_challenger;

	public int getClan_game_code() {
		return clan_game_code;
	}

	public void setClan_game_code(int clan_game_code) {
		this.clan_game_code = clan_game_code;
	}

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

	public String getClan_title() {
		return clan_title;
	}

	public void setClan_title(String clan_title) {
		this.clan_title = clan_title;
	}

	public String getClan_loc() {
		return clan_loc;
	}

	public void setClan_loc(String clan_loc) {
		this.clan_loc = clan_loc;
	}

	public String getClan_story() {
		return clan_story;
	}

	public void setClan_story(String clan_story) {
		this.clan_story = clan_story;
	}

	public String getClan_maker() {
		return clan_maker;
	}

	public void setClan_maker(String clan_maker) {
		this.clan_maker = clan_maker;
	}

	public String getClan_challenger() {
		return clan_challenger;
	}

	public void setClan_challenger(String clan_challenger) {
		this.clan_challenger = clan_challenger;
	}
}
