package org.zerock.domain;

import lombok.Data;

@Data
public class ReservationListVO {
	private int reservationno;
	private String userid;
	private int carid;
	private String rdate;
	private String rtime;
	private int usetime;
	private String nowlocation;
	private String nextlocation;
	private int charge;
}

