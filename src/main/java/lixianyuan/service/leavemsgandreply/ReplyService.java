package lixianyuan.service.leavemsgandreply;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Reply;

public interface ReplyService {
	/**
	 * 增加回复留言，必须要有一个已知的对应的留言id-》leavemsgid
	 * 
	 * @param reply
	 * @return
	 */
	public int addReply(Reply reply);

	/**
	 * 修改回复留言
	 * 
	 * @param reply
	 * @return
	 */
	public int updateReply(Reply reply);

	/**
	 * 删除回复留言
	 * 
	 * @param replyId
	 * @return
	 */
	public int delReplyByReplyId(String replyId);

	/**
	 * 根据条件查询符合的回复留言
	 * 
	 * @param map
	 *            查询条件 包括当前页页号和每页显示的总记录数
	 * @return 符合条件的回复留言
	 */
	public List<Reply> findAllReplyByCondition(Map<String, Object> map);

	/**
	 * 根据条件查询符合的回复留言总条数
	 * 
	 * @param map
	 *            查询条件 包括当前页页号和每页显示的总记录数
	 * @return 总记录数
	 */
	public int findAllReplyCountByCondition(Map<String, Object> map);
}
