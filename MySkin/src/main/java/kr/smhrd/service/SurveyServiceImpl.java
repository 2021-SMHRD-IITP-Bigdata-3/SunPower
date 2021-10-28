package kr.smhrd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.mapper.SurveyMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class SurveyServiceImpl implements SurveyService {

	// spring 4.3 이상에서 자동 처리
		@Setter(onMethod_ = @Autowired)
		private SurveyMapper mapper;
		
		
}