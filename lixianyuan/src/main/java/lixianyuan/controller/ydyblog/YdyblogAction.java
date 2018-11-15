package lixianyuan.controller.ydyblog;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import lixianyuan.bean.Ydyblog;
import lixianyuan.service.redis.RedisService;
import lixianyuan.service.ydyblog.YdyBlogService;
import lixianyuan.util.PageBean;
import lixianyuan.util.UUIDUtil;

@Controller
@RequestMapping("/ydy") // /manage/ydyblog/lixianyuan/ydy
public class YdyblogAction {

	@Autowired
	private YdyBlogService ydyBlogService;
	
	@Autowired
	private RedisService redisService;
	private static ObjectMapper MAPPER = new ObjectMapper();

	// 测试的
	@RequestMapping("/hello")
	public String hello() throws Exception {
		System.out.println("进入controller拉");
		return "index";
	}

	/**
	 *  添加有道云笔记
	 * @param ydyblog
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addYdyblog")
	public @ResponseBody String addYdyblog(Ydyblog ydyblog) throws Exception {
		ydyblog.setYdyblogid(UUIDUtil.getUUID());
		int result = ydyBlogService.insertYdyblog(ydyblog);
		return result > 0 ? "添加成功" : "添加失败，请重新操作";
	}
	
	
	/**
	 * 修改
	 * @param ydyblog
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateYdyblog")
	public @ResponseBody String updateYdyblog(Ydyblog ydyblog) throws Exception {
		int result = ydyBlogService.updateYdyblog(ydyblog);
		return result > 0 ? "修改成功" : "修改失败，请重新操作";
	}
	
	
	/**
	 * 删除
	 * @param ydyblogid  删除条件:根据主键id删除
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delYdyblog")
	public @ResponseBody String delYdyblog(String ydyblogid) throws Exception {
		int result = ydyBlogService.delYdyblog(ydyblogid);
		return result > 0 ? "删除成功" : "删除失败，请重新操作";
	}
	
	

	/**
	 * 根据条件进行分页查询有道云笔记信息
	 * @param currentPage 当前页页号
	 * @param currentCount 每页显示的记录数
	 * @param title 标题
	 * @param url url
	 * @return 返回当前页显示的数据
	 * @throws Exception
	 */
	@RequestMapping("/findYdyblogByCondition")
	public @ResponseBody PageBean findYdyblogByCondition(String currentPage, String currentCount, String title, String url)throws Exception {
		//从缓存中命中，如果命中直接返回，如果没有命中，查询数据库
		//redis缓存，如果在redis中有，则去redis中找，如果没有，则执行之后的代码，去查询数据库
		//key规则：项目名_模块名_业务名
		String key = "lixianyuan_ydy_api";
		try {
			//只有刚进入页面的时候才能使用redis缓存，不然分页会用不了
			if(title.equals("") && currentPage.equals("1")){
				String cacheData = this.redisService.get(key);
				if(cacheData!=null){
					//命中返回
						return MAPPER.readValue(cacheData,PageBean.class);
				}
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
				
				
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
		List<Ydyblog> ydyblogList = ydyBlogService.findAllydyblogByCondigion(mapYdy);
		
		//总记录数
		int sumTotal = ydyBlogService.findAllydyblogCountByCondigion(mapYdy);
		
		//将要分页的所有数据封装在PageBean中
		PageBean<Ydyblog> page = new PageBean<Ydyblog>();
		page.setCurrentPage(currentPage);
		page.setCurrentCount(currentCount);
		page.setSumTotal(sumTotal);
		page.setPageList(ydyblogList);
		
		
		
		//将数据添加到redis中，作为缓存
		try {
			//只有刚进入页面的时候才能使用redis缓存，不然分页会用不了
			if(title.equals("") && currentPage.equals("1")){
				//将结果写入到缓存中 将Java对象序列化成一个json字符串
				this.redisService.set(key, MAPPER.writeValueAsString(page), 60*60*24*30*3);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return page;
	}

}
