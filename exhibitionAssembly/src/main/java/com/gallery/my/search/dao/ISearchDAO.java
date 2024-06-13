package com.gallery.my.search.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gallery.my.search.vo.exhibitVO;
import com.gallery.my.search.vo.galleryVO;

@Mapper
public interface ISearchDAO {
	
	public List<galleryVO> popGal(galleryVO vo);
	
	public List<exhibitVO> popExh(exhibitVO vo);
	
	public List<exhibitVO> newExh(exhibitVO vo);
	
	public List<galleryVO> seoulGal(galleryVO vo);
	
	public List<exhibitVO> seoulExh(exhibitVO vo);

}
