package kr.smhrd.Skintype;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.service.ProductsService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
@AllArgsConstructor
public class ProductsController {
	
	private ProductsService service;
	
	@RequestMapping("product_list")
	public void list(Model model) {
		model.addAttribute("list", service.getList());
	}
	
	@RequestMapping("product_view")
	public void prod_view(int prod_id, Model model) {
		
		model.addAttribute("product", service.get(prod_id));
	}
}