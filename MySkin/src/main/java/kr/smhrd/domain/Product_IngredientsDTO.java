package kr.smhrd.domain;

import lombok.Data;

@Data
public class Product_IngredientsDTO {
	private int prod_ingred_id;
	private int prod_id;
	private int ingred_id;
	private String contain_yn;

}
