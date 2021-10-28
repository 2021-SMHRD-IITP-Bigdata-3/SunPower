package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.ArticlesDTO;
import kr.smhrd.domain.PagingVO;
import kr.smhrd.mapper.BoardMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {


	// spring 4.3 이상에서 자동 처리
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;	

	@Override
	public int countBoard() {
		return mapper.countBoard();
	}

	@Override
	public List<ArticlesDTO> selectBoard(PagingVO vo) {
		return mapper.selectBoard(vo);
	}

	
	
}
