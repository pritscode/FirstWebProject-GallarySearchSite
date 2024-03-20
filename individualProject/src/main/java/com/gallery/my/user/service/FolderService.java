package com.gallery.my.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gallery.my.user.dao.IFolderDAO;
import com.gallery.my.user.vo.FolderVO;

@Service
public class FolderService {
	
	@Autowired
	IFolderDAO dao;
	
	//미술관 폴더 생성
	public void createFolder(FolderVO vo) throws Exception {
		int result = dao.createFolder(vo);
		if(result == 0) {
			throw new Exception();
		}
	}
	
	//전시회 폴더 생성
	public void createEFolder(FolderVO vo) throws Exception {
		int result = dao.createEFolder(vo);
		if(result == 0) {
			throw new Exception();
		}
	}
	
	//미술관 폴더 조회
	public List<FolderVO> userFold(FolderVO vo) {
		return dao.userFold(vo);
	}
	
	//전시회 폴더 조회
	public List<FolderVO> userEFold(FolderVO vo) {
		return dao.userEFold(vo);
	}
	
	//미술관 폴더 내용 조회
	public List<FolderVO> foldContent(FolderVO vo){
		return dao.foldContent(vo);
	}
}
