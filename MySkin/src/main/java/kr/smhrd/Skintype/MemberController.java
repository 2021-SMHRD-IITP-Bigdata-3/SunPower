package kr.smhrd.Skintype;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.smhrd.domain.MembersDTO;
import kr.smhrd.service.MembersService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
@AllArgsConstructor
public class MemberController {
	
	private MembersService service;
	
	@RequestMapping("register")
	public void register() {
		
	}
	
	@PostMapping("register")
	public String register(MembersDTO members, RedirectAttributes rttr) {
		log.info("register : " + members);
		
		service.register(members);
		rttr.addFlashAttribute("result", members);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping("login")
	public void login() {
		
	}
	
	@PostMapping("login")
	public String login(MembersDTO members, HttpServletRequest req, RedirectAttributes rttr) {
		log.info("login : " + members);

		HttpSession session = req.getSession();
		MembersDTO login = service.login(members); 
		
		if(login == null) {
			session.setAttribute("members", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("members", login);
		}
		
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
}