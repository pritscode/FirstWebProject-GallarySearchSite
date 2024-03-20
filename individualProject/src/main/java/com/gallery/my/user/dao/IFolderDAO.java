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
	public List<FolderVO> userserEFold(FolderVO vo);	
	//미술관 폴더 내용 조회
	public List<FolderVO> foldContent(FolderVO vo);
}
