package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.smhrd.domain.IngreCountDTO;
import kr.smhrd.domain.IngredientsDTO;
import kr.smhrd.domain.ProductsDTO;
import kr.smhrd.domain.ReviewsDTO;

public interface ProductsMapper {
	public List<ProductsDTO> getList();
	
	public List<ProductsDTO> getOrderList1();
	public List<ProductsDTO> getOrderList2();
	public List<ProductsDTO> getOrderList3();
	public List<ProductsDTO> getOrderList4();
	public List<ProductsDTO> getOrderList5();
	public List<ProductsDTO> getOrderList6();
	public List<ProductsDTO> getOrderList7();
	public List<ProductsDTO> getOrderList8();
	
	public ProductsDTO read(int prod_id);
	
	public void writeReview(ReviewsDTO review);
	
	public List<ReviewsDTO> getReview(int prod_id);
	
	public IngreCountDTO getGB(@Param("answer")char answer, @Param("prod_id")int prod_id);
	
	public List<IngredientsDTO> getIngre(int prod_id);
	
	public String getSkinType(String mb_id);
}