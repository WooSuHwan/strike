package kr.ac.kopo.strike.model;

import java.util.Date;

public class ClanList {
	private int clanCode;
	private String clanName;
	private int wolCode;
	private String clanTitle;
	private String clanContent;
	private int clanView;
	private Date clanDate;
	
	public int getClanCode() {
		return clanCode;
	}
	public void setClanCode(int clanCode) {
		this.clanCode = clanCode;
	}
	public String getClanName() {
		return clanName;
	}
	public void setClanName(String clanName) {
		this.clanName = clanName;
	}
	public int getWolCode() {
		return wolCode;
	}
	public void setWolCode(int wolCode) {
		this.wolCode = wolCode;
	}
	public String getClanTitle() {
		return clanTitle;
	}
	public void setClanTitle(String clanTitle) {
		this.clanTitle = clanTitle;
	}
	public String getClanContent() {
		return clanContent;
	}
	public void setClanContent(String clanContent) {
		this.clanContent = clanContent;
	}
	public int getClanView() {
		return clanView;
	}
	public void setClanView(int clanView) {
		this.clanView = clanView;
	}
	public Date getClanDate() {
		return clanDate;
	}
	public void setClanDate(Date clanDate) {
		this.clanDate = clanDate;
	}
	
	
}
