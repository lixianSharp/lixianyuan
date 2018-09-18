package lixianyuan.service.ydyblog.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Ydyblog;
import lixianyuan.mapper.YdyblogMapper;
import lixianyuan.service.ydyblog.YdyBlogService;
@Service
public class YdyBlogServiceImpl implements YdyBlogService{
	
	@Autowired
	private YdyblogMapper ydyblogMapper;

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

	//查询出所有，分页查询
	public List<Ydyblog> findAllYdyblog() {
		// TODO Auto-generated method stub
		return null;
	}

}
