package kr.smhrd.service;

import kr.smhrd.domain.SkinTypesDTO;

public interface SurveyService {
	public void updateSkin(String result, String mb_id);
	
	public SkinTypesDTO getSC(String st_class);
}