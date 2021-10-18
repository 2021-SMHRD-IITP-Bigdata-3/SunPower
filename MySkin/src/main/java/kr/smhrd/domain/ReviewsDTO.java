package kr.smhrd.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ReviewsDTO {
	private int review_seq;
	private int prod_id;
	private String mb_id;
	private String review_content;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date reg_date;
	
	private int review_rating;
	private int review_good;
	private int review_bad;
}
