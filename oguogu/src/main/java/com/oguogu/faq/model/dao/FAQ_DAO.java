package com.oguogu.faq.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.faq.model.vo.FAQ_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;
import com.oguogu.qna.vo.Qna_VO;

@Repository
public class FAQ_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 전체 게시글 수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("faq.count");
	}
	
	// 페이징 처리를 위한 리스트
	public List<FAQ_VO> getList(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("faq.list",map);
	}
	
	// 게시글 목록
	public List<FAQ_VO> getList(){
		return sqlSessionTemplate.selectList("faq.list");
	}
	
	// 게시글 삽입(QNA테이블- 1:1 사용자)
	// FAQ 게시글 삽입은 관리자 화면에서 가능
	public int getInsert(Qna_VO qvo) {
		return sqlSessionTemplate.insert("faq.insert", qvo);
	}
	
	// 게시글 상세보기 (FAQ 테이블 글)
	public FAQ_VO getFaqOneList(String faq_idx) {
		return sqlSessionTemplate.selectOne("faq.onelist", faq_idx);
	}
	
	// 게시글 상세보기 (QNA 테이블 글)
	public Qna_VO getQnaOneList(String one_idx) {
		return sqlSessionTemplate.selectOne("faq.onelist", one_idx);
	}
	
	// 게시글 삭제
	public int getQnaDelete(String one_idx) {
		return sqlSessionTemplate.delete("faq.delete", one_idx);
	}
	
	// 게시글 수정
	public int getQnaUpdate(Lounge_VO lvo) {
		return sqlSessionTemplate.update("faq.update",lvo);
	}
}
