package com.gallery.my.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gallery.my.user.dao.IUserDAO;
import com.gallery.my.user.vo.UserVO;

@Service
public class UserService {
	
	@Autowired
	IUserDAO dao;
	
	public void registUser(UserVO vo) throws Exception {
		int result = dao.registUser(vo);
		if(result == 0) {
			throw new Exception();
		}
	}
	
	//회원조회
	public UserVO loginUser(UserVO vo) {
		return dao.loginUser(vo);
	}
	
}
