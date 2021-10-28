package kr.smhrd.mapper;

import java.util.List;

import kr.smhrd.domain.ProductsDTO;

public interface ProductsMapper {
	public List<ProductsDTO> getList();
	
	public List<ProductsDTO> getOrderList(int order);
	
	public ProductsDTO read(int prod_id);
}