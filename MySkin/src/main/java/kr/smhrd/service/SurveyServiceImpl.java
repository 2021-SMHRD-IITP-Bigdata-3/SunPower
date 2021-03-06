package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.AcnetypesDTO;
import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.SkinTypesDTO;
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
		
	@Override
	public void updateSkin(String result, String mb_id) {
		
		mapper.updateSkin(result, mb_id);
	}
	
	@Override
	public void updateSkinA(int st_id, String mb_id) {
		
		mapper.updateSkinA(st_id, mb_id);
	}
	
	@Override
	public SkinTypesDTO getSC(String st_class) {
		
		return mapper.getSC(st_class);
	}
	
	@Override
	public SkinTypesDTO getSTC(int st_class) {
		
		return mapper.getSTC(st_class);
	}
	
	@Override
	public List<ProductsDTO> getRecomProd(String result) {
		
		return mapper.getRecomProd(result);
	}
	
	@Override
	public void updateAC(int result, String mb_id) {
		
		mapper.updateAC(result, mb_id);
	}
	
	@Override
	public AcnetypesDTO getAC(int result) {
		return mapper.getAC(result);
	}
}