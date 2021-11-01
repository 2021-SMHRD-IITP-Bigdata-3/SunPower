package kr.smhrd.Skintype;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.domain.MembersDTO;
import kr.smhrd.domain.ReviewsDTO;
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
	public void list(HttpServletRequest req, Model model) {
		
		model.addAttribute("list", service.getList());
	}
	
	@PostMapping("product_list")
	public void list(int order, Model model) {
		
		model.addAttribute("list", service.getOrderList(order));
	}
	
	@RequestMapping("product_view")
	public void prod_view(int prod_id, HttpServletRequest req, Model model) {
		
		model.addAttribute("product", service.get(prod_id));
		model.addAttribute("review", service.getReview(prod_id));
		model.addAttribute("prod_id", prod_id);
	}
	
	@PostMapping("write_review")
	public String write_review(ReviewsDTO review, HttpServletRequest req, Model model) {
		
		service.writeReview(review);
		
		return "redirect:/product/product_view?prod_id=" + review.getProd_id();
	}
}