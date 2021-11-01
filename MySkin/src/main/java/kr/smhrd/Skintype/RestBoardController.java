package kr.smhrd.Skintype;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.domain.ArticlesDTO;
import kr.smhrd.domain.PagingVO;
import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.service.BoardService;

@RestController
public class RestBoardController {

	@Inject
	private BoardMapper mapper;
	
	@Autowired
	private BoardService board_service;
	
	@RequestMapping("/list.do")
	public List<ArticlesDTO> BoardList(Model model) {
		List<ArticlesDTO> list = mapper.boardList();
		//System.out.println(list);
		return list;
		}
	@PostMapping("/insert.do")
	public String insert(ArticlesDTO to) { //BoardVO VO = new BoardVO();
		mapper.boardInsert(to);
		return "board/board_list";
	}
	@RequestMapping("/getjson.do")
	public @ResponseBody List<ArticlesDTO> getjson(){
		List<ArticlesDTO> list =mapper.boardList();
		return list; //ajax() : list(Object) -> Json(String)로 변환시켜서 클라이언트
	}
	
	
	
}
