package kr.smhrd.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.domain.SkinTypesDTO;
import kr.smhrd.domain.ProductsDTO;

public interface SurveyMapper {
	public void updateSkin(@Param("result")String result, @Param("mb_id")String mb_id);
	
	public SkinTypesDTO getSC(String st_class);
	
	public List<ProductsDTO> getRecomProd(String result);
}