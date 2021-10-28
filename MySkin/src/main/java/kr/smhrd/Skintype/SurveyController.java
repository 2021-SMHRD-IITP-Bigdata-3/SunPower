package kr.smhrd.Skintype;

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

	private SurveyService service;
	
	@RequestMapping("survey")
	public void survey(Model model) {
		
	}
	
	@RequestMapping("simple_survey")
	public void simple_survey(Model model) {
		
	}
}