package kr.ac.kopo.strike.model;

import java.util.Date;

public class SuggestFree {
	
	private int freeCode;
	private String title;
	private String story;
	private Integer hit;
	private String id;
	private int user_code;
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

	public int getUser_code() {
		return user_code;
	}

	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}

	public Integer getHit() {
		return hit;
	}

	public void setHit(Integer hit) {
		this.hit = hit;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
