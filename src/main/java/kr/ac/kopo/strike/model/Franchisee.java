package kr.ac.kopo.strike.model;

import java.util.Date;

public class Franchisee {
	private int franchisee_code;
	private String id;
	private String pw;
	private String name;
	private String birth;
	private int sex;
	private String tel;
	private String address;
	private Date time;

	public int getFranchisee_code() {
		return franchisee_code;
	}

	public void setFranchisee_code(int franchisee_code) {
		this.franchisee_code = franchisee_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

}