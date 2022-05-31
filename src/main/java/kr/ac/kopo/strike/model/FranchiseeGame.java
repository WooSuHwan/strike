package kr.ac.kopo.strike.model;

public class FranchiseeGame {
	private int game_record_code;
	private int game_code;
	private int member_code;
	private String name;
	private int challenger_code;
	private String challenger_name;
	private int winner_code;
	private int loser_code;
	private int draw;
	private String clock;

	public int getGame_record_code() {
		return game_record_code;
	}

	public void setGame_record_code(int game_record_code) {
		this.game_record_code = game_record_code;
	}

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

	public String getClock() {
		return clock;
	}

	public void setClock(String clock) {
		this.clock = clock;
	}

}