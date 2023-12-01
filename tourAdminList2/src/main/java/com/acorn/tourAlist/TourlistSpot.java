package com.acorn.tourAlist;

import lombok.Data;

@Data
public class TourlistSpot {

	String contentid;
	int contenttypeid;
	String rownum;
	String title;
	String address;
	
	public TourlistSpot(String contentid, int contenttypeid, String rownum, String title, String address) {
		super();
		this.contentid=contentid;
		this.contenttypeid=getContenttypeid();
		this.rownum = rownum;
		this.title = title;
		this.address = address;
	}
	
	public TourlistSpot() {
		// TODO Auto-generated constructor stub
	}
	
	
}
