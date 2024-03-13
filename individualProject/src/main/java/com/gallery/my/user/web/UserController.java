package com.gallery.my.user.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
			return "errorView";
		}
		//RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "회원가입이 정상적으로 처리 되었습니다.");
		return "redirect:/";
	}
	
	@RequestMapping("/loginView")
	public String loginView() {
		return "user/loginView";
	}
	
	
}
