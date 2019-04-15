package lixianyuan.service.xysy;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Gossip;

public interface GossipService {
	
	/**
	 * 增加碎语
	 * @param gossip
	 * @return
	 */
	public int addGossip(Gossip gossip);

	/**
	 * 修改碎语，根据id修改的.里面有对字段进行判空处理
	 * @param gossip
	 * @return
	 */
	public int updateGossip(Gossip gossip);

	/**
	 * 删除碎语，根据id删除
	 * @param gossipId
	 * @return
	 */
	public int delGossipByGossipId(String gossipId);

	/**
	 * 查询出所有符合条件的碎语
	 * 
	 * @param map
	 *            查询条件，包括当前页页号currentPage,每页显示的记录数currentCount
	 * @return
	 */
	public List<Gossip> findAllGossipByCondition(Map<String, Object> map);

	/**
	 * 查询出所有符合条件的碎语条数
	 * 
	 * @param map
	 *            查询条件，包括当前页页号currentPage,每页显示的记录数currentCount
	 * @return
	 */
	public int findAllGossipCountByCondition(Map<String, Object> map);
	
}
