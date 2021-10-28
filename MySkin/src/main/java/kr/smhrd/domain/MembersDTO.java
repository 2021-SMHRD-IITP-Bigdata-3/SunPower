package kr.smhrd.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MembersDTO {
	private String mb_id;
	private String mb_pwd;
	private String mb_name;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mb_birth;
	
	private int st_id;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mb_joindate;
	
	private String admin_yn;
	private String gender;
	private String address;
}