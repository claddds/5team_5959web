package com.oguogu.comment.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.comment.model.vo.RepComment_VO;

@Repository
public class RepComment_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 댓글 리스트
	public List<RepComment_VO> getRepCommList(String rep_idx){
		return sqlSessionTemplate.selectList("repcom.list", rep_idx);
	}
	
	// 댓글 입력
	public int getRepCommInsert(RepComment_VO rcvo) {
		return sqlSessionTemplate.insert("repcom.insert",rcvo);
	}
	
	// 댓글 삭제
	public int getRepCommDelete(String repcom_idx) {
		return sqlSessionTemplate.delete("repcom.delete",repcom_idx);
	}
	
	// 댓글 수
	public int getRepCommentcnt(){
		return sqlSessionTemplate.selectOne("repcom.count");
	}
}
