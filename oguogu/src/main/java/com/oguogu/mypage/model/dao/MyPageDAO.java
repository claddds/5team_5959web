package com.oguogu.mypage.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;
import com.oguogu.user.model.vo.User_VO;

@Repository
public class MyPageDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//회원정보 수정
	public int getUpdateMyInfo(User_VO uvo) {
		return sqlSessionTemplate.update("mypage.getUpdateMyInfo", uvo);
	}
	
	//비밀번호 변경
	public int getPwUpdate(String user_id, String pw) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("pw", pw);
		map.put("user_id", user_id);
		
		return sqlSessionTemplate.update("mypage.getPwUpdate",map);
	}
	
	//회원 탈퇴
	public int getRemoveUser(String user_id) {
		return sqlSessionTemplate.update("mypage.getRemoveUser",user_id);
	}
	
	//좋아요(즐겨찾기) 여부 확인
	public int getMyEduFavHeart(String nickname) {
		return sqlSessionTemplate.selectOne("mypage.getMyEduFavHeart",nickname);
	}
	
	//좋아요 한 목록 불러오기
	public List<Education_VO> getMyFavEdu(String nickname) {
		return sqlSessionTemplate.selectList("mypage.getMyFavEdu",nickname);
	}
	
	//글 작성 여부 확인
	public int getmyWriteFind(String user_id) {
		return sqlSessionTemplate.selectOne("mypage.getmyWriteFind",user_id);
	}
	
	
	//글 목록 불러오기
	public List<Lounge_VO> getmyWriteLounge(String user_id, int offset, int limit) {
	    Map<String, Object> map = new HashMap<String, Object>();
	    
	    map.put("user_id", user_id);
	    map.put("limit", limit);
	    map.put("offset", offset);
	    return sqlSessionTemplate.selectList("mypage.getmyWriteLounge", map);
	}
	
	//댓글 개수 세기
	public int getCommentCount(String lo_idx) {
		return sqlSessionTemplate.selectOne("mypage.getCommentCount", lo_idx);
	}
	
	//내가 쓴 댓글 갯수 구하기
	public int getmyCommFind(String user_id) {
		return sqlSessionTemplate.selectOne("mypage.getmyCommFind", user_id);
	}
	
	//내가 쓴 댓글 갯수 구하기
	public List<Lounge_VO> getmyComment(String user_id, int offset, int limit) {
		Map<String, Object> map = new HashMap<String, Object>();  
	    map.put("user_id", user_id);
	    map.put("limit", limit);
	    map.put("offset", offset);
		return sqlSessionTemplate.selectList("mypage.getmyComment", map);
	}

	
}
