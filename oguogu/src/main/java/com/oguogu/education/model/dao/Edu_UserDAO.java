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
public class Edu_UserDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Education_VO> getEList() throws Exception{
		return sqlSessionTemplate.selectList("eduUser.getEList");
	}
	
	public List<Education_VO> getBList() throws Exception{
		return sqlSessionTemplate.selectList("eduUser.getBList");
	}
	
	public List<Education_VO> getTList() throws Exception{
		return sqlSessionTemplate.selectList("eduUser.getTList");
	}
	
	////////////////////////////////////////////////////////////////////
	
	public List<Education_VO> getDogElist(int offset, int limit) throws Exception{
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset",offset);
		return sqlSessionTemplate.selectList("eduUser.getDogElist",map);
	}
	
	public List<Education_VO> getCatElist(int offset, int limit) throws Exception{
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset",offset);
		return sqlSessionTemplate.selectList("eduUser.getCatElist",map);
	}
	
	public int getDogListCount() throws Exception{
		return sqlSessionTemplate.selectOne("eduUser.doglistcount");
	}
	
	public int getCatListCount() throws Exception{
		return sqlSessionTemplate.selectOne("eduUser.catlistcount");
	}
	
	public EduHeart_VO getHeartOnelist(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.selectOne("eduUser.getHeartOnelist",ehVo);
	}
	
	public int getHitUpdate(String edu_idx) throws Exception{
		return sqlSessionTemplate.update("eduUser.getHitUpdate",edu_idx);
	}

	public Education_VO getDogOneList(String edu_idx) throws Exception{
		return sqlSessionTemplate.selectOne("eduUser.getDogOneList",edu_idx);
	}

	public int getHeartInsert(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.insert("eduUser.getHeartInsert",ehVo);
	}

	public int getHeartDelete(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.delete("eduUser.getHeartDelete",ehVo);
	}
	
	public int getHeartCount(String edu_idx) throws Exception{
		return sqlSessionTemplate.selectOne("eduUser.getHeartCount",edu_idx);
	}
}
