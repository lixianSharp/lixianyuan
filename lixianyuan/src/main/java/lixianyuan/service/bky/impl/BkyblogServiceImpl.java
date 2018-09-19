package lixianyuan.service.bky.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Bkyblog;
import lixianyuan.mapper.BkyblogMapper;
import lixianyuan.mapper.custom.BkyblogCustomMapper;
import lixianyuan.service.bky.BkyblogService;
@Service
public class BkyblogServiceImpl implements BkyblogService{

	@Autowired
	private BkyblogMapper bkyblogMapper;
	
	@Autowired
	private BkyblogCustomMapper bkyblogCustomMapper;
	
	public int addBkyblog(Bkyblog bkyblog) {
		int insert = bkyblogMapper.insert(bkyblog);
		return insert;
	}

	public int updateBkyblog(Bkyblog bkyblog) {
		int result = bkyblogMapper.updateByPrimaryKeySelective(bkyblog);
		return result;
	}

	public int delBkyblog(String bkyblogId) {
		int result = bkyblogMapper.deleteByPrimaryKey(bkyblogId);
		return result;
	}

	public List<Bkyblog> findAllbkyBlogByCondition(Map<String, Object> map) {
		List<Bkyblog> result = bkyblogCustomMapper.findAllbkyBlogByCondition(map);
		return result.size()>0?result:null;
	}

	public int findAllbkyBlogCountByCondition(Map<String, Object> map) {
		int result = bkyblogCustomMapper.findAllbkyBlogCountByCondition(map);
		return result>0?result:0;
	}

}
