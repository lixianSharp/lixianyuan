package lixianyuan.mapper.custom;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Gossip;

//闲言碎语
public interface GossipCustomMapper {
	
	/**
	 * 查询出所有符合条件的碎语
	 * @param map 查询条件，包括当前页页号currentPage,每页显示的记录数currentCount
	 * @return
	 */
	public List<Gossip> findAllGossipByCondition(Map<String,Object> map);
	
	/**
	 * 查询出所有符合条件的碎语条数
	 * @param map 查询条件，包括当前页页号currentPage,每页显示的记录数currentCount
	 * @return
	 */
	public int findAllGossipCountByCondition(Map<String,Object> map);
	
}
