package com.gallery.my.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gallery.my.member.dao.IMemberDAO;
import com.gallery.my.member.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	IMemberDAO dao;
	
	public int registMember(MemberVO vo) {
		return dao.registMember(vo);
	}
	
	// 회원 조회
	public MemberVO loginMember(MemberVO vo) {
		return dao.loginMember(vo);
	}
	
	public int updateMember(MemberVO vo) {
		return dao.updateMember(vo);
	}
	
	public int deleteMember(MemberVO vo) {
		return dao.deleteMember(vo);
	}
}
