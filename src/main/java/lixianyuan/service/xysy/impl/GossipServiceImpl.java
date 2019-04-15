package lixianyuan.service.xysy.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Gossip;
import lixianyuan.mapper.GossipMapper;
import lixianyuan.mapper.custom.GossipCustomMapper;
import lixianyuan.service.xysy.GossipService;

@Service
public class GossipServiceImpl implements GossipService {

	@Autowired
	private GossipMapper gossipMapper;

	@Autowired
	private GossipCustomMapper gossipCustomMapper;

	/**
	 * 增加碎语
	 * 
	 * @param gossip
	 * @return
	 */
	public int addGossip(Gossip gossip) {
		int result = gossipMapper.insert(gossip);
		return result > 0 ? result : 0;
	}

	/**
	 * 修改碎语，根据id修改的.里面有对字段进行判空处理
	 * 
	 * @param gossip
	 * @return
	 */
	public int updateGossip(Gossip gossip) {
		int result = gossipMapper.updateByPrimaryKeySelective(gossip);
		return result > 0 ? result : 0;
	}

	/**
	 * 删除碎语，根据id删除
	 * 
	 * @param gossipId
	 * @return
	 */
	public int delGossipByGossipId(String gossipId) {
		int result = gossipMapper.deleteByPrimaryKey(gossipId);
		return result > 0 ? result : 0;
	}

	/**
	 * 查询出所有符合条件的碎语
	 * 
	 * @param map
	 *            查询条件，包括当前页页号currentPage,每页显示的记录数currentCount
	 * @return
	 */
	public List<Gossip> findAllGossipByCondition(Map<String, Object> map) {
		List<Gossip> gossipList = gossipCustomMapper.findAllGossipByCondition(map);
		return gossipList.size() > 0 ? gossipList : null;
	}

	/**
	 * 查询出所有符合条件的碎语条数
	 * 
	 * @param map
	 *            查询条件，包括当前页页号currentPage,每页显示的记录数currentCount
	 * @return
	 */
	public int findAllGossipCountByCondition(Map<String, Object> map) {
		int count = gossipCustomMapper.findAllGossipCountByCondition(map);
		return count;
	}

}
