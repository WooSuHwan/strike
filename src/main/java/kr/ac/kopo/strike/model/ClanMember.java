package kr.ac.kopo.strike.model;

public class ClanMember {
	private int clan_member_code;
	private int member_code;
	private int clan_code;
	private int state;
	// member
	private String name;
	private int record;
	private int win;
	private int lose;
	private int draw;
	private int rate;
	private int score;
	// clan
	private String clan_name;
	private int clan_master_code;
	// 티어
	private String tier; // 밑줄은 무시
	// 승률
	private float percent; // 밑줄은 무시

	public float getPercent() {
		
		percent = (float)win / (float)record * 100;
		
		return percent;
	}
	
	public String getTier() {

		if (score < 11) {

			return "아이언";

		} else if (score < 21) {

			return "브론즈";

		} else if (score < 31) {

			return "실버";

		} else if (score < 31) {

			return "실버";

		} else if (score < 31) {

			return "실버";

		} else if (score < 41) {

			return "골드";

		} else if (score < 51) {

			return "플래티넘";

		} else if (score < 61) {

			return "다이아몬드";

		} else if (score < 71) {

			return "마스터";

		} else if (score < 81) {

			return "그랜드마스터";

		} else {

			return "챌린저";
		}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRecord() {
		return record;
	}

	public void setRecord(int record) {
		this.record = record;
	}

	public int getWin() {
		return win;
	}

	public void setWin(int win) {
		this.win = win;
	}

	public int getLose() {
		return lose;
	}

	public void setLose(int lose) {
		this.lose = lose;
	}

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getClan_member_code() {
		return clan_member_code;
	}

	public void setClan_member_code(int clan_member_code) {
		this.clan_member_code = clan_member_code;
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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
}
