package kr.smhrd.service;

import java.util.List;

import kr.smhrd.domain.AcnetypesDTO;
import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.SkinTypesDTO;

public interface SurveyService {
	public void updateSkin(String result, String mb_id);
	
	public void updateSkinA(int st_id, String mb_id);
	
	public SkinTypesDTO getSC(String st_class);
	
	public SkinTypesDTO getSTC(int st_class);
	
	public List<ProductsDTO> getRecomProd(String result);
	
	public void updateAC(int result, String mb_id);
	
	public AcnetypesDTO getAC(int result);
}