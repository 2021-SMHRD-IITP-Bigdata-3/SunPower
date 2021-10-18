package kr.smhrd.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class OrdersDTO {
	private int order_id;
	private String mb_id;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date order_date;
	
	private int total_amount;
	private int discount_amount;
	private int pay_amount;
	private String pay_method;
	private String pay_done;
	private String mb_request;

}
