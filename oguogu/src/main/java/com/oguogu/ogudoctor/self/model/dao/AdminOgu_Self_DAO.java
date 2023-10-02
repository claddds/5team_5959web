package com.oguogu.ogudoctor.self.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.ogudoctor.self.model.vo.Admin_OguDictionary_VO;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

@Repository
public class AdminOgu_Self_DAO {
	// 실제 Mapper를 호출하는 클래스
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 전체 게시물 수 구하기
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("oguself.count");
	}
	
	// 리스트 구하기
	public List<Ogu_Self_VO> getList(){
		return sqlSessionTemplate.selectList("oguself.list");
	}
	
	// 페이징 처리된 리스트 구하기
	public List<Ogu_Self_VO> getList(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("oguself.list", map);
	}
	
	// 질병 체크 리스트에 추가하기
	public int getDiseaseInsert(Ogu_Self_VO oguselfvo) {
		return sqlSessionTemplate.insert("oguself.insert", oguselfvo);
	}
	
	// 질병 체크 리스트 미게시
	public int getDelete(String ogu_idx) {
		return sqlSessionTemplate.update("oguself.delete",ogu_idx);
	}
}

