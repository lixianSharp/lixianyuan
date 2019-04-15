package lixianyuan.service.leavemsgandreply.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Reply;
import lixianyuan.mapper.ReplyMapper;
import lixianyuan.mapper.custom.ReplyCustomMapper;
import lixianyuan.service.leavemsgandreply.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Autowired
	private ReplyMapper replyMapper;

	@Autowired
	private ReplyCustomMapper replyCustomMapper;

	/**
	 * 增加回复留言，必须要有一个已知的对应的留言id-》leavemsgid
	 * 
	 * @param reply
	 * @return
	 */
	public int addReply(Reply reply) {
		int result = replyMapper.insert(reply);
		return result > 0 ? result : 0;
	}

	/**
	 * 修改回复留言
	 * 
	 * @param reply
	 * @return
	 */
	public int updateReply(Reply reply) {
		int result = replyMapper.updateByPrimaryKeySelective(reply);
		return result > 0 ? result : 0;
	}

	/**
	 * 删除回复留言
	 * 
	 * @param replyId
	 * @return
	 */
	public int delReplyByReplyId(String replyId) {
		int result = replyMapper.deleteByPrimaryKey(replyId);
		return result > 0 ? result : 0;
	}

	/**
	 * 根据条件查询符合的回复留言
	 * 
	 * @param map
	 *            查询条件 包括当前页页号和每页显示的总记录数
	 * @return 符合条件的回复留言
	 */
	public List<Reply> findAllReplyByCondition(Map<String, Object> map) {
		List<Reply> replyList = replyCustomMapper.findAllReplyByCondition(map);
		return replyList.size() > 0 ? replyList : null;
	}

	/**
	 * 根据条件查询符合的回复留言总条数
	 * 
	 * @param map
	 *            查询条件 包括当前页页号和每页显示的总记录数
	 * @return 总记录数
	 */
	public int findAllReplyCountByCondition(Map<String, Object> map) {
		int result = replyCustomMapper.findAllReplyCountByCondition(map);
		return result > 0 ? result : 0;
	}

}