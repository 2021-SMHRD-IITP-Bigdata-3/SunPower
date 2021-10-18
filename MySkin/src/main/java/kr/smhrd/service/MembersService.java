package kr.smhrd.service;

import kr.smhrd.domain.MembersDTO;

public interface MembersService {
	
	public void register(MembersDTO members);
	
	public MembersDTO login(MembersDTO members);
	
}