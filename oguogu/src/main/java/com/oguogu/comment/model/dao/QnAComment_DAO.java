package com.oguogu.comment.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.comment.model.vo.QnAComment_VO;

@Repository
public class QnAComment_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
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
