package com.gallery.my.search.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gallery.my.search.vo.SearchVO;


@Mapper
public interface ISearchDAO {
		
		//미술관 상세 조회
		public List<SearchVO> galCont(SearchVO vo);
		
		//전시회 리스트
		public List<SearchVO> exhList();
		//전시회 상세 조회
		public SearchVO exhCont(int exhNo);
}
