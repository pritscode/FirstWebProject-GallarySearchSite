package com.gallery.my.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gallery.my.member.service.MemberService;
import com.gallery.my.member.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/loginView")
	public String loginView() {
		return "member/loginView";
	}
	
	@RequestMapping("/registView")
	public String registView() {
		return "member/registView";
	}
	
	@RequestMapping("/mypageView")
	public String mypageView(HttpSession session) {
		if (session.getAttribute("login") == null) {
			return "redirect:/loginView";
		}
		return "member/mypageView";
	}
	
	@RequestMapping("/registDo")
	public String registDo(HttpServletRequest request, MemberVO vo, RedirectAttributes re) {
		System.out.println("체크"+request.getParameter("memId"));
		System.out.println(request.getParameter("memPw"));
		vo.setMemPw(passwordEncoder.encode(request.getParameter("memPw")));
		String pwCheck = request.getParameter("pwCheck");
		String memPw = request.getParameter("memPw");
		System.out.println(vo);
		
		if (pwCheck.contentEquals(memPw)) {
			try {
				memberService.registMember(vo);
			} catch (Exception e) {
				System.out.println(e);
				return "redirect:/registView";
			}
			re.addFlashAttribute("msg", "회원가입이 정상적으로 처리됐습니다.");
			return "redirect:/loginView";
		} else {
			re.addFlashAttribute("msg", "비밀번호를 확인해주세요.");
			return "redirect:/registView";
		}
	}
	
	@RequestMapping("/loginDo")
	public String loginDo(MemberVO vo, HttpSession session, RedirectAttributes re, HttpServletResponse resp) {
		
		MemberVO login = memberService.loginMember(vo);
		if (login == null) {
			re.addFlashAttribute("msg", "아이디를 확인해주세요.");
			return "redirect:/loginView";
		}
		
		boolean match = passwordEncoder.matches(vo.getMemPw(), login.getMemPw());
		if(!match) {
			re.addFlashAttribute("msg", "비밀번호를 확인해주세요.");
			return "redirect:/loginView";
		}
		
		session.setAttribute("login", login);
		System.out.println(login);
		re.addFlashAttribute("msg", login.getMemNm() + "님 환영합니다.");
		
		return "redirect:/";
	}
	
	@RequestMapping("/logoutDo")
	public String logoutDo(HttpSession session, RedirectAttributes re) {
		session.invalidate();
		re.addFlashAttribute("msg", "로그아웃되셨습니다.");
		return "redirect:/";
	}
	
	@RequestMapping("/updateDo")
	public String updateDo(MemberVO vo, HttpSession session, RedirectAttributes re) {
		
		MemberVO login = (MemberVO) session.getAttribute("login");
		System.out.println(vo);
		vo.setMemId(login.getMemId());
		
		try {
			memberService.updateMember(vo);
			vo = memberService.loginMember(vo);
			session.setAttribute("login", vo);
			re.addFlashAttribute("msg", "회원 정보가 수정되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/mypageView";
	}
	
	@ResponseBody
	@RequestMapping("/deleteDo")
	public String deleteDo(MemberVO vo, HttpSession session, RedirectAttributes re) {
		MemberVO login = (MemberVO) session.getAttribute("login");
		vo.setMemId(login.getMemId());
		try {
			memberService.deleteMember(vo);
		} catch (Exception e) {
			e.printStackTrace();
			return "N";
		}
		return "Y";
	}

}
