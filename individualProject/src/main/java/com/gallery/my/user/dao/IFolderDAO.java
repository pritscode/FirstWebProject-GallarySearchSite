package com.gallery.my.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gallery.my.user.vo.FolderVO;

@Mapper
public interface IFolderDAO {
	//미술관 폴더 생성
	public int createFolder(FolderVO vo);
	//전시회 폴더 생성
	public int createEFolder(FolderVO vo);
	//미술관 폴더 조회
	public List<FolderVO> userFold(FolderVO vo);
	//전시회 폴더 조회
	public List<FolderVO> userEFold(FolderVO vo);
	//미술관 폴더 내용 조회
	public List<FolderVO> foldContent(FolderVO vo);
	//전시회 폴더 내용 조회
	public List<FolderVO> foldEContent(FolderVO vo);
	//미술관 폴더 내용 추가
	public int insertFContent(FolderVO vo);
	//전시회 폴더 내용 추가
	public int insertEFContent(FolderVO vo);
}
