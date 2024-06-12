package com.gallery.my.member.dao;

import org.apache.ibatis.annotations.Mapper;

import com.gallery.my.member.vo.MemberVO;

@Mapper
public interface IMemberDAO {
	
	public int registMember(MemberVO vo);
	
	public MemberVO loginMember(MemberVO vo);
	
	public int updateMember(MemberVO vo);
	
	public int deleteMember(MemberVO vo);
}
