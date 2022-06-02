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