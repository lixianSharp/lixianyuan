package lixianyuan.controller.leavemsg;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lixianyuan.bean.Leavemsg;
import lixianyuan.service.leavemsgandreply.LeaveMsgService;
import lixianyuan.util.PageBean;
import lixianyuan.util.UUIDUtil;

@Controller
@RequestMapping("/leavemsg") // /manage/ydyblog/lixianyuan/ydy
public class LeaveMsgAction {

	@Autowired
	private LeaveMsgService leaveMsgService;

	@RequestMapping(value = "test")
	public @ResponseBody String test(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		System.out.println("访客的ip地址为:"+ip);
		return ip;
	}

	/**
	 * 添加留言
	 * 
	 * @param leavemsg
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addLeavemsg")
	public @ResponseBody String addLeavemsg(Leavemsg leavemsg) throws Exception {
		leavemsg.setLeavemsgid(UUIDUtil.getUUID());
		leavemsg.setLeavetime(new Date());
		int result = leaveMsgService.addLeaveMsg(leavemsg);
		return result > 0 ? "添加成功" : "添加失败，请重新操作";
	}

	/**
	 * 修改
	 * 
	 * @param leavemsg
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateLeavemsg")
	public @ResponseBody String updateLeavemsg(Leavemsg leavemsg) throws Exception {
		int result = leaveMsgService.updateLeaveMsg(leavemsg);
		return result > 0 ? "修改成功" : "修改失败，请重新操作";
	}

	/**
	 * 删除
	 * 
	 * @param ydyblogid
	 *            删除条件:根据主键id删除.
	 *            步骤，先删除回复留言(副表)，再删除留言(主表)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delLeavemsgid")
	public @ResponseBody String delLeavemsgid(String leavemsgid) throws Exception {
		int result = leaveMsgService.delLeaveMsgById(leavemsgid);
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