package com.oguogu.comment.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.comment.model.vo.Comment_VO;

@Repository
public class Comment_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
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
	public int getCommentcnt(){
		return sqlSessionTemplate.selectOne("com.count");
	}
}
