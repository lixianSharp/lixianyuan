package lixianyuan.service.ydyblog.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Ydyblog;
import lixianyuan.mapper.YdyblogMapper;
import lixianyuan.mapper.custom.YdyblogCustomMapper;
import lixianyuan.service.ydyblog.YdyBlogService;
@Service
public class YdyBlogServiceImpl implements YdyBlogService{
	
	@Autowired
	private YdyblogMapper ydyblogMapper;
	
	//自定义的mapper
	@Autowired
	private YdyblogCustomMapper ydyblogCustomMapper;

	//增加
	public int insertYdyblog(Ydyblog ydyblog) {
		int result = ydyblogMapper.insert(ydyblog);
		return result;
	}

	//修改
	public int updateYdyblog(Ydyblog ydyblog) {
		int result = ydyblogMapper.updateByPrimaryKeySelective(ydyblog);
		return result;
	}

	//根据id删除
	public int delYdyblog(String ydyId) {
		int result = ydyblogMapper.deleteByPrimaryKey(ydyId);
		return result;
	}

	//根据条件查询出符合条件的有道云笔记，分页查询
	public List<Ydyblog> findAllydyblogByCondigion(Map<String,Object> map) {
		List<Ydyblog> result = ydyblogCustomMapper.findAllydyblogByCondigion(map);
		return result.size()>0?result:null;
	}

	//根据条件查询出总记录数
	public int findAllydyblogCountByCondigion(Map<String, Object> map) {
		int result = ydyblogCustomMapper.findAllydyblogCountByCondigion(map);
		return result>0?result:0;
	}

}
