package kr.smhrd.service;

import java.util.List;

import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.SkinTypesDTO;

public interface SurveyService {
	public void updateSkin(String result, String mb_id);
	
	public SkinTypesDTO getSC(String st_class);
	
	public List<ProductsDTO> getRecomProd(String result);
}