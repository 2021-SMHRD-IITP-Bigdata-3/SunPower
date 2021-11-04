package kr.smhrd.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.domain.SkinTypesDTO;
import kr.smhrd.domain.AcnetypesDTO;
import kr.smhrd.domain.ProductsDTO;

public interface SurveyMapper {
	public void updateSkin(@Param("result")String result, @Param("mb_id")String mb_id);
	
	public void updateSkinA(@Param("st_id")int st_id, @Param("mb_id")String mb_id);
	
	public SkinTypesDTO getSC(String st_class);
	
	public SkinTypesDTO getSTC(int st_class);
	
	public List<ProductsDTO> getRecomProd(String result);
	
	public void updateAC(@Param("result")int result, @Param("mb_id")String mb_id);
	
	public AcnetypesDTO getAC(@Param("result")int result);
}