package com.oguogu.qna.model.service;

import java.util.List;

import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;
import com.oguogu.qna.model.vo.Qna_VO;

public interface Qna_Service {
	
	// 전체 게시물의 수
	public int getTotalCount();
	
	// 페이징 처리를 위한 리스트
	public List<Qna_VO> getList(int offset, int limit);
	
	// 삽입
	public int getInsert(Qna_VO qvo);
	
	// 상세보기
	public Qna_VO getOneList(String one_idx);
	
	// 원글 수정
	public int getUpdate(Qna_VO qvo);

	// 원글 삭제
	public int getDelete(String one_idx);
	
// 문의사항에 대한 답글?	
//	// 댓글 목록 가져오기
//	public List<Comment_VO> getCommList(String com_idx);
//	
//	// 댓글 삽입(등록)
//	public int getCommInsert(Comment_VO cvo);
//	
//	// 댓글 삭제
//	public int getCommDelete(String com_idx);
//	
//	// 댓글 수정
//	public int getCommUpdate(Comment_VO cvo);
}
