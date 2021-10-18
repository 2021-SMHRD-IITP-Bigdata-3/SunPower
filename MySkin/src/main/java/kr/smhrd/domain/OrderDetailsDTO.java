package kr.smhrd.domain;

import lombok.Data;

@Data
public class OrderDetailsDTO {
	private int dt_order_id;
	private int order_id;
	private int prod_id;
	private int order_count;

}
