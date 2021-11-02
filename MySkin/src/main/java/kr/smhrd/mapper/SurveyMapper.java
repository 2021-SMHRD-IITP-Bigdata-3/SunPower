package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Param;

import kr.smhrd.domain.SkinTypesDTO;

public interface SurveyMapper {
	public void updateSkin(@Param("result")String result, @Param("mb_id")String mb_id);
	
	public SkinTypesDTO getSC(String st_class);
}