package org.zerock.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria{

	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	private String gender;
	 
	public Criteria() {
		this(1,10,"타입","키워드");
	}
	public Criteria(int pageNum, int amount, String type, String keyword) {
		this.pageNum=pageNum;
		this.amount=amount;
		this.type=type;
		this.keyword=keyword;
	}
	
	public String[] getTypeArr() {
		
		return type== null? new String[] {}: type.split("");
	}
	
	public String getListLink() {
		UriComponentsBuilder builder =UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		
		return builder.toUriString();
	}
}
