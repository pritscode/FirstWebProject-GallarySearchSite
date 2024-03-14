package com.gallery.my.user.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gallery.my.user.service.UserService;
import com.gallery.my.user.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	UserService userservice;
	
	@RequestMapping("/registView")
	public String registView() {
		return "user/registView";
	}
	
	@RequestMapping("/registDo")
	public String registDo(HttpServletRequest request
			, UserVO user, RedirectAttributes re) {
		try {
			userservice.registUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			re.addFlashAttribute("msg", "회원가입이 정상적으로 처리 되지 못했습니다.");
			return "redirect:/registView";
		}
		//RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "회원가입이 정상적으로 처리 되었습니다.");
		return "redirect:/";
	}
	
	@RequestMapping("/loginView")
	public String loginView(HttpServletRequest req, Model model) {
		// Model 뷰에 전달할 데이터를 담는 객체 (컨트롤러에서 뷰로 데이터 전달시 사용)
		// 현재 request요청이 어느 URL로 부터 왔는지(로그인 처리 후 이동시켜주려고) 
		String reqURL = req.getHeader("Referer");
		model.addAttribute("fromURL", reqURL);
		return "user/loginView";
	}		
	
	@RequestMapping("/loginDo")
	public String loginDo(UserVO vo, HttpSession session, boolean remember
		,String fromURL, RedirectAttributes re
		,HttpServletResponse resp) {
		
		System.out.println(vo);
		System.out.println(remember);
		
		UserVO login = userservice.loginUser(vo);
		
		if(login == null) {
			re.addFlashAttribute("msg", "아이디를 확인해 주세요.");
			return "redirect:/loginView";
		}
		
		if(login == null) {
			re.addFlashAttribute("msg", "비번을 확인해 주세요.");
			return "redirect:/loginView";
		}
		
		session.setAttribute("login", login);
		
		if(remember) {
			// 쿠키 생성
			Cookie cookie = new Cookie("rememberId", vo.getId());
			// 응답하는 객체에 붙여준다.
			resp.addCookie(cookie);
		}else {
			// 쿠키 삭제 (동일한 key값을 가지는 쿠키를 생성 후 유효기간을 0으로 만든다)
			Cookie cookie = new Cookie("rememberId", "");
			cookie.setMaxAge(0);
			
			// 유효기간 0짜리인 쿠키를 응답하는 객체에 붙여준다.
			resp.addCookie(cookie);
		}
		System.out.println(login);
		
		return "redirect:"+fromURL;
	}
	
	@RequestMapping("/logoutDo")
	public String logoutDo (HttpSession session, RedirectAttributes re) {
		//세션 종료		
		session.invalidate();
		re.addFlashAttribute("msg", "로그아웃 되셨습니다.");
		return "redirect:/";
	}
	
	@RequestMapping("/mypageView")
	public String mypageView(HttpSession session) {
		if(session.getAttribute("login") == null) {
			return "redirect:/loginView";
		}
		return "user/mypageView";
	}
	
	@RequestMapping("/modifyingDo")
	public String modifyingDo(UserVO vo, RedirectAttributes re, HttpSession session
		,HttpServletResponse resp) throws Exception {
		UserVO login = (UserVO) session.getAttribute("login");
		userservice.modifyingUI(vo);
		login.setNm(vo.getNm());
		session.setAttribute("login",login);
		
		return "user/mypageView";
	}
	
}
