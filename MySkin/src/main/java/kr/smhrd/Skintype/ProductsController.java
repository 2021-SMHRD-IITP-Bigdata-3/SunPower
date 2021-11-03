package kr.smhrd.Skintype;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.domain.IngreCountDTO;
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
	
	
	//장바구니 맵핑
	@RequestMapping("product_cart")
	public void cart() {
		
	}
	
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
		
		List<ReviewsDTO> review = service.getReview(prod_id);
		List<String> reviewST = new ArrayList<>();
		
		for(int i=0; i<review.size(); i++) {
			System.out.println(service.getSkinType(review.get(i).getMb_id()));
			reviewST.add(service.getSkinType(review.get(i).getMb_id()));
		}
		
		// 상품목록 가져오기
		model.addAttribute("product", service.get(prod_id));
		
		// 리뷰 가져오기
		model.addAttribute("review", review);
		
		// 리뷰 쓴 사람 피부타입 가져오기
		model.addAttribute("reviewST", reviewST);
		
		// 좋은 or 나쁜 성분 카운트해서 가져오기
		model.addAttribute("ingreG", service.getGB('g', prod_id));
		model.addAttribute("ingreB", service.getGB('b', prod_id));
		
		// 성분정보 저장
		model.addAttribute("ingre", service.getIngre(prod_id));
		
		// 상품번호 저장
		model.addAttribute("prod_id", prod_id);
	}
	
	@PostMapping("write_review")
	public String write_review(ReviewsDTO review, Model model) {
		
		service.writeReview(review);
		
		return "redirect:/product/product_view?prod_id=" + review.getProd_id();
	}
}