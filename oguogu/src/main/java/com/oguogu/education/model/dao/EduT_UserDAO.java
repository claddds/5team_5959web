package com.oguogu.education.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.education.model.vo.EduHeart_VO;
import com.oguogu.education.model.vo.Education_VO;

@Repository
public class EduT_UserDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Education_VO> getDogTlist(int offset, int limit) throws Exception{
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset",offset);
		return sqlSessionTemplate.selectList("eduUserT.getDogTlist",map);
	}

	public List<Education_VO> getCatTlist(int offset, int limit) throws Exception{
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset",offset);
		return sqlSessionTemplate.selectList("eduUserT.getCatTlist",map);
	}

	public int getDogListTCount() throws Exception{
		return sqlSessionTemplate.selectOne("eduUserT.doglistcount");
	}

	public int getCatListTCount() throws Exception{
		return sqlSessionTemplate.selectOne("eduUserT.catlistcount");
	}
	
	public EduHeart_VO getTHeartOnelist(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.selectOne("eduUserT.getTHeartOnelist",ehVo);
	}

	public int getTHitUpdate(String edu_idx) throws Exception{
		return sqlSessionTemplate.update("eduUserT.getTHitUpdate",edu_idx);
	}

	public Education_VO getTDogOneList(String edu_idx) throws Exception{
		return sqlSessionTemplate.selectOne("eduUserT.getTDogOneList",edu_idx);
	}

	public int getTHeartInsert(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.insert("eduUserT.getTHeartInsert",ehVo);
	}

	public int getTHeartDelete(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.delete("eduUserT.getTHeartDelete",ehVo);
	}

	public int getTHeartCount(String edu_idx) throws Exception{
		return sqlSessionTemplate.selectOne("eduUserT.getTHeartCount",edu_idx);
	}
	
}
