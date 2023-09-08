package com.oguogu.lounge.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.lounge.model.vo.Lounge_VO;

@Repository
public class Lounge_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 전체 게시글 수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("lounge.count");
	}
	
	// 페이징 처리를 위한 리스트
	public List<Lounge_VO> getList(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("lounge.list",map);
	}
	
	// 게시글 목록
	public List<Lounge_VO> getList(){
		return sqlSessionTemplate.selectList("lounge.list");
	}
	
	// 게시글 삽입
	public int getInsert(Lounge_VO lvo) {
		return sqlSessionTemplate.insert("lounge.insert", lvo);
	}
	// 게시글 조회수
	public int getHitUpdate(String lo_idx) {
		return sqlSessionTemplate.update("lounge.hitup",lo_idx);
	}
	
	// 게시글 상세보기
	public Lounge_VO getOneList(String lo_idx) {
		return sqlSessionTemplate.selectOne("lounge.onelist", lo_idx);
	}
	
	// 게시글 삭제
	public int getDelete(String lo_idx) {
		return sqlSessionTemplate.delete("lounge.delete", lo_idx);
	}
	
	// 게시글 수정
	public int getUpdate(Lounge_VO lvo) {
		return sqlSessionTemplate.update("lounge.update",lvo);
	}
}
