package com.gallery.my.user.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gallery.my.user.service.FolderService;
import com.gallery.my.user.service.UserService;
import com.gallery.my.user.vo.FolderVO;
import com.gallery.my.user.vo.UserVO;

@Controller
public class FolderController {
	
	@Autowired
	FolderService folderservice;
	
	@RequestMapping("/createFolderDo")
	public String createFolderDo(HttpServletRequest request
			, FolderVO Folder, RedirectAttributes re) {
		try {
			folderservice.createFolder(Folder);
		} catch (Exception e) {
			e.printStackTrace();
			re.addFlashAttribute("msg", "폴더가 생성되지 못했습니다.");
			return "redirect:/mypageView";
		}
		//RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "폴더가 생성되었습니다.");
		return "redirect:/mypageView";
	}
	
	@RequestMapping("/createEFolderDo")
	public String createEFolderDo(HttpServletRequest request
			, FolderVO Folder, RedirectAttributes re) {
		try {
			folderservice.createEFolder(Folder);
		} catch (Exception e) {
			e.printStackTrace();
			re.addFlashAttribute("msg", "폴더가 생성되지 못했습니다.");
			return "redirect:/mypageView";
		}
		//RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "폴더가 생성되었습니다.");
		return "redirect:/mypageView";
	}
	
	@RequestMapping("/foldContentView")
	public String foldContentView(HttpSession session, Model model, FolderVO vo) {
		System.out.println(vo);
		UserVO login = (UserVO) session.getAttribute("login");
		if(login == null) {
			return "redirect:/loginView";
		}
		
		List<FolderVO> arr = folderservice.userFold(vo);
		List<FolderVO> arrC = folderservice.foldContent(vo);
		model.addAttribute("arr", arr);
		model.addAttribute("arrC", arrC);
		
		return "user/foldContentView";
	}

	@RequestMapping("/eFoldContentView")
	public String eFoldContentView(HttpSession session, Model model, FolderVO vo) {
		System.out.println(vo);
		UserVO login = (UserVO) session.getAttribute("login");
		if(login == null) {
			return "redirect:/loginView";
		}
		
		List<FolderVO> arrE = folderservice.userEFold(vo);
		List<FolderVO> arrEC = folderservice.foldEContent(vo);
		System.out.println(arrE);
		model.addAttribute("arrE", arrE);
		model.addAttribute("arrEC", arrEC);
		
		return "user/eFoldContentView";
	}
	
	@RequestMapping("/insertFContentDo")
	public String insertFContentDo(HttpServletRequest request, Model model
			, String fromURL, FolderVO Folder, RedirectAttributes re) {
		String reqURL = request.getHeader("Referer");
		model.addAttribute("fromURL", reqURL);
		try {
			folderservice.insertFContent(Folder);
		} catch (Exception e) {
			e.printStackTrace();
			re.addFlashAttribute("msg", "관심 리스트에 추가되지 못했습니다.");
			return "redirect:"+fromURL;
		}
		//RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "관심 리스트에 추가되었습니다.");
		return "redirect:"+fromURL;
	}
	
	@RequestMapping("/insertEFContentDo")
	public String insertEFContentDo(HttpServletRequest request, Model model
			, String fromURL, FolderVO Folder, RedirectAttributes re) {
		String reqURL = request.getHeader("Referer");
		model.addAttribute("fromURL", reqURL);
		try {
			folderservice.insertEFContent(Folder);
		} catch (Exception e) {
			e.printStackTrace();
			re.addFlashAttribute("msg", "관심 리스트에 추가되지 못했습니다.");
			return "redirect:"+fromURL;
		}
		//RedirectAttributes 리다이렉트시 전송하고 싶은데이터를 포함시켜서 리다이렉트 요청을 할 수 있음.
		re.addFlashAttribute("msg", "관심 리스트에 추가되었습니다.");
		return "redirect:"+fromURL;
	}
}
