package com.gallery.my.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gallery.my.user.dao.IUserDAO;
import com.gallery.my.user.vo.UserVO;

@Service
public class UserService {
	
	@Autowired
	IUserDAO dao;
	
	// 회원 가입
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
	
	//회원 정보 수정
	public void modifyingUI(UserVO vo) throws Exception {

		int result = dao.modifyingUI(vo);
		if( result ==0) {
			throw new Exception();
		}
	}
	
}
