package kr.smhrd.Skintype;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("img_analysis")
	public void i_analysis(Model model) {
			
	}
	@RequestMapping("img_analysis_result")
	public void i_analysis_result(Model model) {
			
	}
}