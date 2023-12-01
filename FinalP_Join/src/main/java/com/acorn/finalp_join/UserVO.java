package com.acorn.finalp_join;

public class UserVO {
	
	private String id;
	private String nickname;
	private String pw;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", nickname=" + nickname + ", pw=" + pw + "]";
	}
	public UserVO(String id, String nickname, String pw) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.pw = pw;
	}
	
	
	
	 
	
	
 
	 
}
