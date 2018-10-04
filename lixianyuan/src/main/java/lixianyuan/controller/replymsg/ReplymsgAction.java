package lixianyuan.controller.replymsg;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lixianyuan.bean.Leavemsg;
import lixianyuan.bean.Reply;
import lixianyuan.service.leavemsgandreply.LeaveMsgService;
import lixianyuan.service.leavemsgandreply.ReplyService;
import lixianyuan.util.PageBean;
import lixianyuan.util.UUIDUtil;

@Controller
@RequestMapping("/replymsg")
public class ReplymsgAction {

	@Autowired
	private LeaveMsgService leaveMsgService;
	
	@Autowired
	private ReplyService replyService;
	

	/**
	 * 回复留言
	 * @param reply
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addReply")
	public @ResponseBody String addReply(Reply reply) throws Exception {
		reply.setReplyid(UUIDUtil.getUUID());
		reply.setReplytime(new Date());
		int result = replyService.addReply(reply);
		return result > 0 ? "添加成功" : "添加失败，请重新操作";
	}

	/**
	 * 修改回复留言
	 * @param reply
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateReply")
	public @ResponseBody String updateReply(Reply reply) throws Exception {
		int result = replyService.updateReply(reply);
		return result > 0 ? "修改成功" : "修改失败，请重新操作";
	}

	/**
	 * 删除
	 * 
	 * @param ydyblogid
	 *            删除条件:根据主键id删除
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delReplyById")
	public @ResponseBody String delReplyById(String replyId)throws Exception {
		int result = replyService.delReplyByReplyId(replyId);
		return result > 0 ? "删除成功" : "删除失败，请重新操作";
	}

	
	
	
	/**
	 * 根据条件进行分页查询留言信息
	 * 
	 * @param currentPage
	 * @param currentCount
	 * @param name
	 * @param title
	 * @param content
	 * @param email
	 * @param ipaddress
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findLeavemsgByCondition")
	public @ResponseBody PageBean findLeavemsgByCondition(String currentPage, String currentCount, String name,
			String title, String content, String email, String ipaddress) throws Exception {

		Map<String, Object> mapYdy = new LinkedHashMap<String, Object>();

		// 封装查询条件
		mapYdy.put("name", name);
		mapYdy.put("email", title);
		mapYdy.put("content", content);
		mapYdy.put("email", email);
		mapYdy.put("ipaddress", ipaddress);
		mapYdy.put("currentPage", (Integer.parseInt(currentPage) - 1) * Integer.parseInt(currentCount));// (当前页页号-1)*每页显示的记录数
		mapYdy.put("currentCount", Integer.parseInt(currentCount));// 每页显示的记录数
		// 当前页要显示的数据
		List<Leavemsg> ydyblogList = leaveMsgService.findleaveMsgByCondition(mapYdy);

		// 总记录数
		int sumTotal = leaveMsgService.findleaveMsgCountByCondition(mapYdy);

		// 将要分页的所有数据封装在PageBean中
		PageBean<Leavemsg> page = new PageBean<Leavemsg>();
		page.setCurrentPage(currentPage);
		page.setCurrentCount(currentCount);
		page.setSumTotal(sumTotal);
		page.setPageList(ydyblogList);

		return page;
	}

	
	/**
	 * 查询出所有的留言及其对应的回复留言，使用的是左外连接查询
	 * 
	 * @param currentPage
	 * @param currentCount
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findAllLeavemsgAndReplymsg")
	public @ResponseBody PageBean findAllLeavemsgAndReplymsg(String currentPage, String currentCount) throws Exception {
		Map<String, Object> mapYdy = new LinkedHashMap<String, Object>();

		// 封装查询条件=》当前页页号和每页显示的记录数
		mapYdy.put("currentPage", (Integer.parseInt(currentPage) - 1) * Integer.parseInt(currentCount));// (当前页页号-1)*每页显示的记录数
		mapYdy.put("currentCount", Integer.parseInt(currentCount));// 每页显示的记录数
		// 当前页要显示的数据
		List<Map<String, Object>> leaveMsgAndReply = leaveMsgService.findleaveMsgAndReply(mapYdy);

		// 总记录数
		int sumTotal = leaveMsgService.findleaveMsgCountByCondition(mapYdy);

		// 将要分页的所有数据封装在PageBean中
		PageBean<Map<String, Object>> page = new PageBean<Map<String, Object>>();
		page.setCurrentPage(currentPage);
		page.setCurrentCount(currentCount);
		page.setSumTotal(sumTotal);
		page.setPageList(leaveMsgAndReply);

		return page;
	}

}