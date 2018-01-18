package com.example.spring.salmanager;

public class Board_Member {
	
	String boardName;
	String boardTitle;
	String memo;
	String selDepartment;
	String chk [];
	
	
	
	public String[] getChk() {
		return chk;
	}
	public void setChk(String[] chk) {
		this.chk = chk;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getSelDepartment() {
		return selDepartment;
	}
	public void setSelDepartment(String selDepartment) {
		this.selDepartment = selDepartment;
	}
	
}
