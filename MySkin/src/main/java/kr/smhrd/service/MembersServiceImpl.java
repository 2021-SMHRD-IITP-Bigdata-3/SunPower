package kr.smhrd.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.MembersDTO;
import kr.smhrd.mapper.MembersMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MembersServiceImpl implements MembersService {

	// spring 4.3 이상에서 자동 처리
	@Setter(onMethod_ = @Autowired)
	private MembersMapper mapper;
	
	@Override
	public void register(MembersDTO members) {
		
		log.info("register......." + members);
		
		mapper.register(members);
	}
	
	@Override
	public MembersDTO login(MembersDTO members) {
		
		log.info("login.........." + members);
		
		return mapper.login(members);
	}
	
	@Override
	public MembersDTO mb_ck(String mb_id) {
		return mapper.mb_ck(mb_id);
	}
}