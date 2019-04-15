package lixianyuan.controller.bkyblog;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lixianyuan.bean.Bkyblog;
import lixianyuan.service.bky.BkyblogService;
import lixianyuan.util.PageBean;
import lixianyuan.util.UUIDUtil;
@Controller
@RequestMapping("/bky")
public class BkyblogAction {

	@Autowired
	private BkyblogService bkyblogService;

	/**
	 *  添加博客园博客
	 * @param bkyblog
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addBkyblog")
	public @ResponseBody String addBkyblog(Bkyblog bkyblog) throws Exception {
		bkyblog.setBkyblogid(UUIDUtil.getUUID());
		int result = bkyblogService.addBkyblog(bkyblog);
		return result > 0 ? "添加成功" : "添加失败，请重新操作";
	}
	
	
	/**
	 * 修改
	 * @param bkyblog
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateBkyblog")
	public @ResponseBody String updateBkyblog(Bkyblog bkyblog) throws Exception {
		int result = bkyblogService.updateBkyblog(bkyblog);
		return result > 0 ? "修改成功" : "修改失败，请重新操作";
	}
	
	
	/**
	 * 删除
	 * @param bkyblogid  删除条件:根据主键id删除
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delBkyblog")
	public @ResponseBody String delBkyblog(String bkyblogid) throws Exception {
		int result = bkyblogService.delBkyblog(bkyblogid);
		return result > 0 ? "删除成功" : "删除失败，请重新操作";
	}
	
	

	/**
	 * 根据条件进行分页查询博客园博客信息
	 * @param currentPage 当前页页号
	 * @param currentCount 每页显示的记录数
	 * @param title 标题
	 * @param url url
	 * @return 返回当前页显示的数据
	 * @throws Exception
	 */
	@RequestMapping("/findBkyblogByCondition")
	public @ResponseBody PageBean findBkyblogByCondition(String currentPage, String currentCount, String title, String url)throws Exception {
		
		Map<String, Object> mapYdy = new LinkedHashMap<String, Object>();
		if (title == null) {
			title = "";
		}
		if (url == null) {
			url = "";
		}
		mapYdy.put("title", title);
		mapYdy.put("url", url);
		mapYdy.put("currentPage", (Integer.parseInt(currentPage) - 1) * Integer.parseInt(currentCount));// (当前页页号-1)*每页显示的记录数
		mapYdy.put("currentCount", Integer.parseInt(currentCount));//每页显示的记录数
		//当前页要显示的数据
		List<Bkyblog> bkyblogList = bkyblogService.findAllbkyBlogByCondition(mapYdy);
		
		//总记录数
		int sumTotal = bkyblogService.findAllbkyBlogCountByCondition(mapYdy);
		
		//将要分页的所有数据封装在PageBean中
		PageBean<Bkyblog> page = new PageBean<Bkyblog>();
		page.setCurrentPage(currentPage);
		page.setCurrentCount(currentCount);
		page.setSumTotal(sumTotal);
		page.setPageList(bkyblogList);
		
		return page;
	}

}