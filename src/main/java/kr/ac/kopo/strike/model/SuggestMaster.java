package kr.ac.kopo.strike.model;

import java.util.Date;

public class SuggestMaster {

	private int MasterCode;
	private String title;
	private String story;
	private Integer hit;
	private String id;
	private int member_code;
	private String name;
	private Date regDate;
	private int grade;
	
	
	
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getMasterCode() {
		return MasterCode;
	}
	public void setMasterCode(int masterCode) {
		MasterCode = masterCode;
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
	public int getmember_code() {
		return member_code;
	}
	public void setmember_code(int user_code) {
		this.member_code = user_code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
	
}
