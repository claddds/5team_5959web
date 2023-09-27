package com.oguogu.lounge.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.comment.model.vo.Comment_VO;
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
		map.put("offset", offset);
		map.put("limit", limit);
		return sqlSessionTemplate.selectList("lounge.list",map);
	}
	
	// 카테고리 - 일상 공유
	public List<Lounge_VO> getLo_Alist(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("lounge.Alist", map);
	}
	
	// 카테고리 - 추천탭
	public List<Lounge_VO> getLo_Blist(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("lounge.Blist", map);
	}
	
	// 카테고리 - 질문
	public List<Lounge_VO> getLo_Clist(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("lounge.Clist", map);
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

	// 댓글 리스트
	public List<Comment_VO> getCommList(String lo_idx){
		return sqlSessionTemplate.selectList("com.list", lo_idx);
	}
	
	// 댓글 입력
	public int getCommInsert(Comment_VO cvo) {
		return sqlSessionTemplate.insert("com.insert",cvo);
	}
	
	// 댓글 수정
	public int getCommUpdate(Comment_VO cvo) {
		return sqlSessionTemplate.update("com.update",cvo);
	}
	
	// 댓글 삭제
	public int getCommDelete(String com_idx) {
		return sqlSessionTemplate.delete("com.delete",com_idx);
	}
	
	// 댓글 수
	public int getCommentcnt(String lo_idx){
		return sqlSessionTemplate.selectOne("com.count",lo_idx);
	}
}
