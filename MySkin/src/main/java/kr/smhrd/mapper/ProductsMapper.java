package kr.smhrd.mapper;

import java.util.List;

import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.ReviewsDTO;

public interface ProductsMapper {
	public List<ProductsDTO> getList();
	
	public List<ProductsDTO> getOrderList(int order);
	
	public ProductsDTO read(int prod_id);
	
	public void writeReview(ReviewsDTO review);
	
	public List<ReviewsDTO> getReview(int prod_id);
}