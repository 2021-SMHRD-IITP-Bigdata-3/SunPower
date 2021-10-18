package kr.smhrd.mapper;

import kr.smhrd.domain.MembersDTO;

public interface MembersMapper {

	public void register(MembersDTO members);
	
	public MembersDTO login(MembersDTO members);
}