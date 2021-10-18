package kr.smhrd.service;

import java.util.List;

import kr.smhrd.domain.ProductsDTO;

public interface ProductsService {

	public List<ProductsDTO> getList();
	
	public ProductsDTO get(int prod_id);
	
}