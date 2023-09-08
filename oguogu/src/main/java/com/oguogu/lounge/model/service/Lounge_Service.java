package com.oguogu.lounge.model.service;

import java.util.List;

import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;

public interface Lounge_Service {
	
	// 리스트
	public List<Lounge_VO> getList();
	
	// 삽입
	public int getInsert(Lounge_VO lvo);
	
	// 전체 게시물의 수
	public int getTotalCount();
	
	// 페이징 처리를 위한 리스트
	public List<Lounge_VO> getList(int offset, int limit);
	
	// 상세보기
	public Lounge_VO getOneList(String lo_idx);
	
	// 조회수 업데이트
	public int getHitUpdate(String lo_idx);
	
	// 원글 삭제
	public int getDelete(String lo_idx);
	
	// 원글 수정
	public int getUpdate(Lounge_VO lvo);
	
	// 댓글 목록 가져오기
	public List<Comment_VO> getCommList(String com_idx);
	
	// 댓글 삽입(등록)
	public int getCommInsert(Comment_VO cvo);
	
	// 댓글 삭제
	public int getCommDelete(String com_idx);
	
	// 댓글 수정
	public int getCommUpdate(Comment_VO cvo);
}
