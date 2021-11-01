package kr.smhrd.Skintype;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.domain.ArticlesDTO;
import kr.smhrd.domain.PagingVO;
import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.service.BoardService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {

	@Inject
	private BoardMapper mapper;
	
	@Autowired
	private BoardService board_service;
	
//	@RequestMapping("board_list")
//	public void board_list(Model model) {
//		model.addAttribute("list", board_service.boardList());
//	}

	@GetMapping("/board_list")
	public void boardList(PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = board_service.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", board_service.selectBoard(vo));
		model.addAttribute("list", board_service.boardList());
		System.out.println(board_service.boardList().size());
		//return "board/board_list";
	}

	@RequestMapping("board_write")
	//@GetMapping("board-write")
	public void board_write() {
	  //return "board/board-write";
	}


	@RequestMapping("/boardInsertForm.do")
	public String boardInsertForm() {
		//return "boardInsertForm";// /WEB-INF/views/boardInsertForm.jsp
		return "board/board_write";
	}
	@PostMapping("/boardInsert.do")
	public String boardInsert(ArticlesDTO to) { //BoardVO VO = new BoardVO();
		mapper.boardInsert(to);
		// 저장이 성공 후에는 
		return "board/board_list";//redirect: 이거 잊지마세요.
	}
	
	@RequestMapping("boardContent")
	public String boardContent(int article_SEQ,Model model) {
		ArticlesDTO to = mapper.boardContent(article_SEQ);
		model.addAttribute("to",to);
		return "board/boardContent";
	}
	
	@GetMapping("/boardDelete.do")
	public String boardDelete(int article_seq) {
			mapper.boardDelete(article_seq);
			return "redirect:/board/board_list";
	}
	
	
	
}
