package lixianyuan.service.leavemsgandreply;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Leavemsg;

public interface LeaveMsgService {
	/**
	 * 增加留言
	 * @param leaveMsg
	 * @return
	 */
	public int addLeaveMsg(Leavemsg leaveMsg);
	
	/**
	 * 修改留言
	 * @param leaveMsg
	 * @return
	 */
	public int updateLeaveMsg(Leavemsg leaveMsg);
	
	/**
	 * 删除留言
	 * @param leaveMsgId
	 * @return
	 */
	public int delLeaveMsgById(String leaveMsgId);
	
	/**
	 * 根据条件查询出符合条件的留言
	 * @param map 查询条件 包括当前页页号currentPage和每页显示的记录数currentCount
	 * @return 总记录数
	 */
	public List<Leavemsg> findleaveMsgByCondition(Map<String,Object> map);
	
	/**
	 * 根据条件查询出符合条件的总记录数
	 * @param map 查询条件
	 * @return 总记录数
	 */
	public int findleaveMsgCountByCondition(Map<String,Object> map);
	
	/**
	 * 查询出所有的留言及其对应的回复留言
	 * 	每一个map代表mysql中的一行数据
	 * @return 留言及其对应的回复留言
	 */
	public List<Map<String,Object>> findleaveMsgAndReply();
	
}