package com.acorn.memo;

public class Memo {

	String code;
	int rownum;
	String content;
	
	public Memo() {
		// TODO Auto-generated constructor stub
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Memo(String code, int rownum, String content) {
		super();
		this.code = code;
		this.rownum = rownum;
		this.content = content;
	}

	@Override
	public String toString() {
		return "Memo [code=" + code + ", rownum=" + rownum + ", content=" + content + "]";
	}
	
	
	
	 
}
