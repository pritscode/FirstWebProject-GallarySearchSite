package com.gallery.my.user.dao;

import org.apache.ibatis.annotations.Mapper;

import com.gallery.my.user.vo.UserVO;

@Mapper
public interface IUserDAO {

	//회원가입
	public int registUser(UserVO vo);
	//회원조회
	public UserVO loginUser(UserVO vo);
}
