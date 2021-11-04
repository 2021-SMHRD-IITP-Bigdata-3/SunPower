package kr.smhrd.Skintype;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.domain.MembersDTO;
import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.SkinTypesDTO;
import kr.smhrd.service.SurveyService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/survey/*")
@Log4j
@AllArgsConstructor
public class SurveyController {
	@Autowired
	private SurveyService service;
	
	@RequestMapping("choice_survey")
	public void choice_survey() {
		
	}
	
	@RequestMapping("survey_test")
	public void survey_test(Model model) {
		
	}
	
	@RequestMapping("survey_test_detail")
	public void survey_test_detail(Model model) {
		
	}
	
	@GetMapping("survey_test_result")
	public void survey_test_result(String result, String mb_id, Model model) {
		
		service.updateSkin(result, mb_id);
		SkinTypesDTO skin = service.getSC(result);
		List<ProductsDTO> prod = service.getRecomProd(result);
		
		model.addAttribute("skin", skin);
		model.addAttribute("prod", prod);
	}
	
	@RequestMapping("img_analysis")
	public void i_analysis(Model model) {
			
	}
	
	@GetMapping("img_analysis_result")
	public void img_analysis_result(int result, String mb_id, Model model) {
		
		service.updateAC(result, mb_id);
		model.addAttribute("res",result);
		model.addAttribute("ac", service.getAC(result));		
	}
}