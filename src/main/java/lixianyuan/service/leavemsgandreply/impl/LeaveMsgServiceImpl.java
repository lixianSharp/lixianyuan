package lixianyuan.service.leavemsgandreply.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Leavemsg;
import lixianyuan.bean.Reply;
import lixianyuan.bean.ReplyExample;
import lixianyuan.bean.ReplyExample.Criteria;
import lixianyuan.mapper.LeavemsgMapper;
import lixianyuan.mapper.ReplyMapper;
import lixianyuan.mapper.custom.LeavemsgCustomMapper;
import lixianyuan.service.leavemsgandreply.LeaveMsgService;

@Service
public class LeaveMsgServiceImpl implements LeaveMsgService {

	@Autowired
	private LeavemsgMapper leavemsgMapper;
	
	@Autowired
	private ReplyMapper replyMapper;

	@Autowired
	private LeavemsgCustomMapper leavemsgCustomMapper;

	/**
	 * 增加留言
	 * 
	 * @param leaveMsg
	 * @return
	 */
	public int addLeaveMsg(Leavemsg leaveMsg) {
		int result = leavemsgMapper.insert(leaveMsg);
		return result > 0 ? result : 0;
	}

	/**
	 * 修改留言
	 * 
	 * @param leaveMsg
	 * @return
	 */
	public int updateLeaveMsg(Leavemsg leaveMsg) {
		int result = leavemsgMapper.updateByPrimaryKeySelective(leaveMsg);
		return result > 0 ? result : 0;
	}

	/**
	 * 删除留言
	 * 
	 * @param leaveMsgId
	 * @return
	 */
	public int delLeaveMsgById(String leaveMsgId) {
		// 1、根据留言leavemsgid查询出回复留言信息，然后获取其replyid,之后根据replyid删除回复留言信息
		ReplyExample replyExample = new ReplyExample();
		Criteria createCriteria = replyExample.createCriteria();
		// 封装查询条件
		createCriteria.andLeavemsgidEqualTo(leaveMsgId);
		List<Reply> replyList = replyMapper.selectByExample(replyExample);
		if (replyList.size()>0) {
			Reply reply = replyList.get(0);
			//根据回复留言id删除对留言的回复的那条信息(根据回复留言id删除回复留言)
			int delReplyResult = replyMapper.deleteByPrimaryKey(reply.getReplyid());
		}
		
		//2.删除留言(根据留言id删除)
		int result = leavemsgMapper.deleteByPrimaryKey(leaveMsgId);
		return result > 0 ? result : 0;
	}

	/**
	 * 根据条件查询出符合条件的留言
	 * 
	 * @param map
	 *            查询条件 包括当前页页号currentPage和每页显示的记录数currentCount
	 * @return 总记录数
	 */
	public List<Leavemsg> findleaveMsgByCondition(Map<String, Object> map) {
		List<Leavemsg> leavemsgList = leavemsgCustomMapper.findleaveMsgByCondition(map);
		return leavemsgList.size() > 0 ? leavemsgList : null;
	}

	/**
	 * 根据条件查询出符合条件的总记录数
	 * 
	 * @param map
	 *            查询条件
	 * @return 总记录数
	 */
	public int findleaveMsgCountByCondition(Map<String, Object> map) {
		int result = leavemsgCustomMapper.findleaveMsgCountByCondition(map);
		return result > 0 ? result : 0;
	}

	/**
	 * 查询出所有的留言及其对应的回复留言 每一个map代表mysql中的一行数据
	 * 
	 * @return 留言及其对应的回复留言
	 */
	public List<Map<String, Object>> findleaveMsgAndReply(Map<String, Object> map) {
		List<Map<String, Object>> listMap = leavemsgCustomMapper.findleaveMsgAndReply(map);
		return listMap.size() > 0 ? listMap : null;
	}

	/**
	 * 查询出所有的留言及其对应的回复留言的总条数
	 * 
	 * @return 留言及其对应的回复留言总条数
	 */
	public int findleaveMsgAndReplyCount() {
		int count = leavemsgCustomMapper.findleaveMsgAndReplyCount();
		return count;
	}

}