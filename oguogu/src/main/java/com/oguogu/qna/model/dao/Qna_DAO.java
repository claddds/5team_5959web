package com.oguogu.qna.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.comment.model.vo.QnAComment_VO;
import com.oguogu.qna.model.vo.Qna_VO;

@Repository
public class Qna_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 전체 게시글 수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("qna.count");
	}
	
	// 페이징 처리를 위한 리스트
	public List<Qna_VO> getList(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("qna.list",map);
	}
	
	// 게시글 삽입
	public int getInsert(Qna_VO qvo) {
		return sqlSessionTemplate.insert("qna.insert", qvo);
	}
	
	// 게시글 상세보기
	public Qna_VO getOneList(String one_idx) {
		return sqlSessionTemplate.selectOne("qna.onelist", one_idx);
	}
	
	// 게시글 수정
	public int getUpdate(Qna_VO qvo) {
		return sqlSessionTemplate.update("qna.update",qvo);
	}
	
	// 게시글 삭제
	public int getDelete(String one_idx) {
		return sqlSessionTemplate.delete("qna.delete", one_idx);
	}
	// 댓글 리스트
	public List<QnAComment_VO> getQnACommList(String one_idx){
		return sqlSessionTemplate.selectList("qnacom.list", one_idx);
	}
	
	// 댓글 입력
	public int getQnACommInsert(QnAComment_VO qcvo) {
		return sqlSessionTemplate.insert("qnacom.insert",qcvo);
	}
	
	// 댓글 삭제
	public int getQnACommDelete(String qnacom_idx) {
		return sqlSessionTemplate.delete("qnacom.delete",qnacom_idx);
	}
	
}
