package kr.smhrd.service;

import java.util.List;

import kr.smhrd.domain.ArticlesDTO;
import kr.smhrd.domain.PagingVO;

public interface BoardService {
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<ArticlesDTO> selectBoard(PagingVO vo);
	public List<ArticlesDTO> boardList();
	
}
