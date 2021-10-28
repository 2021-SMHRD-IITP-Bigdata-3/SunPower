package kr.smhrd.service;

import java.util.Map;

import kr.smhrd.domain.MembersDTO;

public interface MembersService {
	
	public void register(MembersDTO members);
	
	public MembersDTO login(MembersDTO members);
	
	public MembersDTO mb_ck(String mb_id);
}