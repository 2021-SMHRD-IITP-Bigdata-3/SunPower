package kr.smhrd.Skintype;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public void list(Model model) {
		
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("product_list")
	public void list(@RequestParam @Nullable String orders, Model model) {
		System.out.println(orders);
		if(orders == null) {
			System.out.println("order == null");
			model.addAttribute("list", service.getList());
		} else {
			// System.out.println("order != null");
			switch(orders) {
			case "1" :
				model.addAttribute("list", service.getOrderList1());
				break;
			case "2" :
				model.addAttribute("list", service.getOrderList2());
				break;
			case "3" :
				model.addAttribute("list", service.getOrderList3());
				break;
			case "4" :
				model.addAttribute("list", service.getOrderList4());
				break;
			case "스킨케어" :
				model.addAttribute("list", service.getOrderList5());
				break;
			case "마스크팩" :
				model.addAttribute("list", service.getOrderList6());
				break;
			case "선케어" :
				model.addAttribute("list", service.getOrderList7());
				break;
			case "클렌징" :
				model.addAttribute("list", service.getOrderList8());
				break;
			}
		}
	}
	
	@RequestMapping("product_view")
	public void prod_view(int prod_id, HttpServletRequest req, Model model) {
		
		List<ReviewsDTO> review = service.getReview(prod_id);
		List<String> reviewST = new ArrayList<>();
		
		for(int i=0; i<review.size(); i++) {
			// System.out.println(service.getSkinType(review.get(i).getMb_id()));
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
	
	@RequestMapping("buy_success")
	public void buy_success(int prod_id, Model model) {
		
		model.addAttribute("list", service.getList());
	}
	
	@RequestMapping("buy")
	public void buy(int prod_id, Model model) {
		
		model.addAttribute("product", service.get(prod_id));
	}
}