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
	
	@RequestMapping("s_survey")
	public void s_survey(Model model) {
		
	}
	
	@RequestMapping("d_survey")
	public void d_survey(Model model) {
		
	}
	
	@RequestMapping("img_analysis")
	public void i_analysis(Model model) {
			
	}
	@RequestMapping("img_analysis_result")
	public void i_analysis_result(Model model) {
			
	}
	
	
	
	
}