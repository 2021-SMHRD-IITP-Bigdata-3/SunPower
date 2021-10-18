package kr.smhrd.Skintype;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;




@Controller
//@RequestMapping("/product/*")
@Log4j
@AllArgsConstructor
public class ArticlesController {

	@RequestMapping(value="/board/boardList")
	public ModelAndView openBoardList(Criteria cri) throws Exception {
	        
	    ModelAndView mav = new ModelAndView("/board/boardList");
	        
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(100);
	        
	    List<Map<String,Object>> list = boardServcie.selectBoardList(cri);
	    mav.addObject("list", list);
	    mav.addObject("pageMaker", pageMaker);
	        
	    return mav;
	        
	}


	출처: https://to-dy.tistory.com/90 [todyDev]
	
}
