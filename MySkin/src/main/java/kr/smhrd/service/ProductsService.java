package kr.smhrd.service;

import java.util.List;

import kr.smhrd.domain.IngreCountDTO;
import kr.smhrd.domain.IngredientsDTO;
import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.ReviewsDTO;

public interface ProductsService {

	public List<ProductsDTO> getList();
	
	public List<ProductsDTO> getOrderList1();
	public List<ProductsDTO> getOrderList2();
	public List<ProductsDTO> getOrderList3();
	public List<ProductsDTO> getOrderList4();
	
	public ProductsDTO get(int prod_id);
	
	public void writeReview(ReviewsDTO review);
	
	public List<ReviewsDTO> getReview(int prod_id);
	
	public IngreCountDTO getGB(char answer, int prod_id);
	
	public List<IngredientsDTO> getIngre(int prod_id);
	
	public String getSkinType(String mb_id);
}