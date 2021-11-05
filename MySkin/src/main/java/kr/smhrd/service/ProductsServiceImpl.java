package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.IngreCountDTO;
import kr.smhrd.domain.IngredientsDTO;
import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.ReviewsDTO;
import kr.smhrd.mapper.ProductsMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductsServiceImpl implements ProductsService {
	
	// spring 4.3 이상에서 자동 처리
	@Setter(onMethod_ = @Autowired)
	private ProductsMapper mapper;
	
	@Override
	public List<ProductsDTO> getList() {
		
		return mapper.getList();
	}
	
	@Override
	public List<ProductsDTO> getOrderList1() {
		
		return mapper.getOrderList1();
	}
	
	@Override
	public List<ProductsDTO> getOrderList2() {
		return mapper.getOrderList2();
	}
	
	@Override
	public List<ProductsDTO> getOrderList3() {
		return mapper.getOrderList3();
	}
	
	@Override
	public List<ProductsDTO> getOrderList4() {
		return mapper.getOrderList4();
	}
		
	@Override
	public ProductsDTO get(int prod_id) {
		
		return mapper.read(prod_id);
	}
	
	@Override
	public void writeReview(ReviewsDTO review) {
		
		mapper.writeReview(review);
	}
	
	@Override
	public List<ReviewsDTO> getReview(int prod_id) {
		
		return mapper.getReview(prod_id);
	}
	
	@Override
	public IngreCountDTO getGB(char answer, int prod_id) {
		
		return mapper.getGB(answer, prod_id);
	}
	
	@Override
	public List<IngredientsDTO> getIngre(int prod_id) {
		
		return mapper.getIngre(prod_id);
	}
	
	@Override
	public String getSkinType(String mb_id) {
		
		return mapper.getSkinType(mb_id);
	}
}