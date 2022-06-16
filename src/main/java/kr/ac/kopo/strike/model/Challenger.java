package kr.ac.kopo.strike.model;

import java.util.Date;

public class Challenger {
	private int challenger_code;
	private int challenger_member_code;
	private int game_code;
	private int state;
	private Date time;
	// member
	private String name;
	private int score;
	private int record;
	private int win;
	private int lose;
	private int draw;
	private int rate;
	// 티어
	private String tier; // 밑줄은 무시
	// 승률
	private float percent; // 밑줄은 무시

	public float getPercent() {

		if (record == 0) {
			percent = 0;
		} else {
			percent = (float) win / (float) record * 100;
		}

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

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getChallenger_code() {
		return challenger_code;
	}

	public void setChallenger_code(int challenger_code) {
		this.challenger_code = challenger_code;
	}

	public int getChallenger_member_code() {
		return challenger_member_code;
	}

	public void setChallenger_member_code(int challenger_member_code) {
		this.challenger_member_code = challenger_member_code;
	}

	public int getGame_code() {
		return game_code;
	}

	public void setGame_code(int game_code) {
		this.game_code = game_code;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
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

}