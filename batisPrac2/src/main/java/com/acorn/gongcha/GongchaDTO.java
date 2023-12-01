package com.acorn.gongcha;

import lombok.Data;

@Data
public class GongchaDTO {

	String itemNo;
	String chaname;
	String chaprice;
	
	
	public GongchaDTO(String itemNo, String chaname, String chaprice) {
		super();
		this.itemNo = itemNo;
		this.chaname = chaname;
		this.chaprice = chaprice;
	}
	
	
}


