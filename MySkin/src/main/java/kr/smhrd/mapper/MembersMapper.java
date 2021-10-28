package kr.smhrd.mapper;

import java.util.Map;

import kr.smhrd.domain.MembersDTO;

public interface MembersMapper {

	public void register(MembersDTO members);
	
	public MembersDTO login(MembersDTO members);
	
	public MembersDTO mb_ck(String mb_id);
}