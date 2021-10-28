package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.domain.ArticlesDTO;
import kr.smhrd.domain.PagingVO;

public interface BoardMapper {

	// 게시글 상세보기
	public ArticlesDTO viewDetail(int seq);
	
	public List<ArticlesDTO> boardList();
	public ArticlesDTO boardContent(int article_SEQ);

	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<ArticlesDTO> selectBoard(PagingVO vo);
	
	// 조회수 +1
	public boolean plusCnt(int seq);
	public int insertBoard(ArticlesDTO to);
	// 게시물 삭제
	public boolean deleteBoard(int seq);
	public void boardInsert(ArticlesDTO to);
	public void boardUpdate(ArticlesDTO to);
	
	@Delete("delete from articles where article_seq=#{article_seq}")
	public void boardDelete(int article_seq);
	
	@Update("update articles set article_title=#{article_title}, mb_id=#{mb_id} where article_seq = #{article_seq}")
	public void update(ArticlesDTO to);
}
