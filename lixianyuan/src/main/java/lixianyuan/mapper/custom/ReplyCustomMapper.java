package lixianyuan.mapper.custom;
//回复留言

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Reply;

public interface ReplyCustomMapper {
	/**
	 *  根据条件查询符合的回复留言
	 * @param map 查询条件 包括当前页页号和每页显示的总记录数
	 * @return 符合条件的回复留言
	 */
	public List<Reply> findAllReplyByCondition(Map<String, Object> map);
	
	/**
	 *  根据条件查询符合的回复留言总条数
	 * @param map 查询条件 包括当前页页号和每页显示的总记录数
	 * @return 总记录数
	 */
	public int findAllReplyCountByCondition(Map<String,Object> map);
	
	
}
