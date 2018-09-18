package lixianyuan.service.bky.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Bkyblog;
import lixianyuan.mapper.BkyblogMapper;
import lixianyuan.service.bky.BkyblogService;
@Service
public class BkyblogServiceImpl implements BkyblogService{

	@Autowired
	private BkyblogMapper bkyblogMapper;
	
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
	
	//查询出所有，分页查询.也可以模糊查询
	public List<Bkyblog> findAllBkyblog(Map map) {
		// TODO Auto-generated method stub
		return null;
	}


}
