package org.zerock.domain;

import lombok.Data;

@Data
public class CarInfoVO {
	private  int carid;
	private String carno;
	private String carmodel;
	private String carcategory;
	private String price;
	private String dprice;
	private String nowlocation;
	private String nextlocation;
	
	
}
