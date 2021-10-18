package kr.smhrd.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ArticlesDTO {
	private int article_seq;
	private String article_title;
	private String mb_id;
	private String article_content;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date reg_date;
	
	private int article_cnt;

}
