package kr.smhrd.service;

import java.util.List;

import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.ReviewsDTO;

public interface ProductsService {

	public List<ProductsDTO> getList();
	
	public List<ProductsDTO> getOrderList(int order);
	
	public ProductsDTO get(int prod_id);
	
	public void writeReview(ReviewsDTO review);
	
	public List<ReviewsDTO> getReview(int prod_id);
}