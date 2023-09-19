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
public class EduB_UserDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Education_VO> getDogBlist(int offset, int limit) throws Exception{
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset",offset);
		return sqlSessionTemplate.selectList("eduUserB.getDogBlist",map);
	}

	public List<Education_VO> getCatBlist(int offset, int limit) throws Exception{
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset",offset);
		return sqlSessionTemplate.selectList("eduUserB.getCatBlist",map);
	}

	public int getDogListBCount() throws Exception{
		return sqlSessionTemplate.selectOne("eduUserB.doglistcount");
	}

	public int getCatListBCount() throws Exception{
		return sqlSessionTemplate.selectOne("eduUserB.catlistcount");
	}
	
	public EduHeart_VO getBHeartOnelist(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.selectOne("eduUserB.getBHeartOnelist",ehVo);
	}

	public int getBHitUpdate(String edu_idx) throws Exception{
		return sqlSessionTemplate.update("eduUserB.getBHitUpdate",edu_idx);
	}

	public Education_VO getBDogOneList(String edu_idx) throws Exception{
		return sqlSessionTemplate.selectOne("eduUserB.getBDogOneList",edu_idx);
	}

	public int getBHeartInsert(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.insert("eduUserB.getBHeartInsert",ehVo);
	}

	public int getBHeartDelete(EduHeart_VO ehVo) throws Exception{
		return sqlSessionTemplate.delete("eduUserB.getBHeartDelete",ehVo);
	}

	public int getBHeartCount(String edu_idx) throws Exception{
		return sqlSessionTemplate.selectOne("eduUserB.getBHeartCount",edu_idx);
	}
	
}
