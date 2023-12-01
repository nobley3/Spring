package com.acorn.tourAlist;

import lombok.Data;

@Data
public class TourlistSpot {

	String rownum;
	String contentid;
	int contenttypeid;
	String title;
	String address;
	String ck;
	
	public TourlistSpot(String contentid, int contenttypeid, String rownum, String title, String address,String ck) {
		super();
		this.rownum = rownum;
		this.contentid=contentid;
		this.contenttypeid=contenttypeid;
		this.title = title;
		this.address = address;
		this.ck = ck;
		
	}
	
	public TourlistSpot() {
		// TODO Auto-generated constructor stub
	}
	
	
}
