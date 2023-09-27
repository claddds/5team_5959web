package com.oguogu.lounge.model.service;

import java.util.List;

import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;

public interface Lounge_Service {
	
	// 삽입
	public int getInsert(Lounge_VO lvo);
	
	// 전체 게시물의 수
	public int getTotalCount();
	
	// 페이징 처리를 위한 리스트
	public List<Lounge_VO> getList(int offset, int limit);
	
	// 카테고리 - 일상 공유
	public List<Lounge_VO> getLo_Alist(int offset, int limit);
	
	// 카테고리 - 추천탭
	public List<Lounge_VO> getLo_Blist(int offset, int limit);
	
	// 카테고리 - 질문
	public List<Lounge_VO> getLo_Clist(int offset, int limit);
	
	// 상세보기
	public Lounge_VO getOneList(String lo_idx);
	
	// 조회수 업데이트
	public int getHitUpdate(String lo_idx);
	
	// 원글 삭제
	public int getDelete(String lo_idx);
	
	// 원글 수정
	public int getUpdate(Lounge_VO lvo);
	
	// 댓글 카운트
	public int getCommentcnt(String lo_idx);

	// 댓글 가져오기(리스트)
	public List<Comment_VO> getCommList(String lo_idx);
	
	// 댓글 입력
	public int getCommInsert(Comment_VO cvo);
	
	// 댓글 삭제
	public int getCommDelete(String com_idx);
	

}
