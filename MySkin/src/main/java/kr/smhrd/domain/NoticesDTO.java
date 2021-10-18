package kr.smhrd.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class NoticesDTO {
	private int notice_seq;
	private String notice_title;
	private String notice_content;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date notice_date;
	
	private String mb_id;
	private int notice_cnt;

}
