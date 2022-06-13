package kr.ac.kopo.strike.model;

public class FranchiseeAdd {
	private int franchisee_suggest_code;
	private String name;
	private String address;
	private String tel;
	private String time;

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getFranchisee_suggest_code() {
		return franchisee_suggest_code;
	}

	public void setFranchisee_suggest_code(int franchisee_suggest_code) {
		this.franchisee_suggest_code = franchisee_suggest_code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
}
