package com.gallery.my.user.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gallery.my.user.service.FolderService;
import com.gallery.my.user.service.UserService;
import com.gallery.my.user.vo.FolderVO;

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
	
}
