package kr.ac.kopo.strike.model;

public class FranchiseeGame {
	private int game_code;
	private int member_code;
	private String name;
	private int challenger_code;
	private String challenger_name;

	public int getGame_code() {
		return game_code;
	}

	public void setGame_code(int game_code) {
		this.game_code = game_code;
	}

	public int getMember_code() {
		return member_code;
	}

	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getChallenger_code() {
		return challenger_code;
	}

	public void setChallenger_code(int challenger_code) {
		this.challenger_code = challenger_code;
	}

	public String getChallenger_name() {
		return challenger_name;
	}

	public void setChallenger_name(String challenger_name) {
		this.challenger_name = challenger_name;
	}

}