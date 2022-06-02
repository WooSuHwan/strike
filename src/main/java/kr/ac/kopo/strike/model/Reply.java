package kr.ac.kopo.strike.model;

import java.util.Date;


public class Reply {
	
	private int reply_code;
	private int free_code;
	private String reply_story;
	
	private Date reg_date;
	private int user_code;
	private String reply_name;
	
	
	public int getReply_code() {
		return reply_code;
	}
	public void setReply_code(int reply_code) {
		this.reply_code = reply_code;
	}
	public int getFree_code() {
		return free_code;
	}
	public void setFree_code(int free_code) {
		this.free_code = free_code;
	}
	public String getReply_story() {
		return reply_story;
	}
	public void setReply_story(String reply_story) {
		this.reply_story = reply_story;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getUser_code() {
		return user_code;
	}
	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}
	public String getReply_name() {
		return reply_name;
	}
	public void setReply_name(String reply_name) {
		this.reply_name = reply_name;
	}
	
	
	
	
	
	
}
