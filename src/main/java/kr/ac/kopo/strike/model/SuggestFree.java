package kr.ac.kopo.strike.model;

import java.util.Date;

public class SuggestFree {
	
	private int freeCode;
	private String title;
	private String story;
	private Integer hit;
	private int member_code;
	private String name;
	private Date regDate;

	
	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public int getMember_code() {
		return member_code;
	}

	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}

	public Integer getHit() {
		return hit;
	}

	public void setHit(Integer hit) {
		this.hit = hit;
	}

	public int getFreeCode() {
		return freeCode;
	}

	public void setFreeCode(int freeCode) {
		this.freeCode = freeCode;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStory() {
		return story;
	}

	public void setStory(String story) {
		this.story = story;
	}

	
	
}
