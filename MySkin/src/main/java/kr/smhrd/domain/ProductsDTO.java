package kr.smhrd.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ProductsDTO {
	private int prod_id;
	private String prod_name;
	private int prod_price;
	private String prod_maker;
	private double prod_rating;
	private String prod_ex_date;
	
	public String getFormat_price() {
		return String.format("%,d", prod_price);
	}

	public String getFormat_price2() {
		return String.format("%,d", prod_price+17500); 
	}
}