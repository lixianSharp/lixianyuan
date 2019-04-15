package lixianyuan.test;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lixianyuan.bean.Ydyblog;
import lixianyuan.mapper.custom.YdyblogCustomMapper;
import lixianyuan.service.ydyblog.YdyBlogService;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "classpath*:SpringMVC.xml", "classpath*:applicationContext-dao.xml" })
/*
 * @ContextConfiguration("classpath:SpringMVC.xml,applicationContext-dao.xml")
 */
public class TestUtil {

	//@Autowired
	//private YdyBlogService ydyBlogService;

	//@Autowired
	//private YdyblogCustomMapper ydyblogCustomMapper;

	// 增加
	/*@Test
	public void insertydyblog() {
		for (int i = 42; i < 70; i++) {
			Ydyblog ydyblog = new Ydyblog();
			ydyblog.setTitle("标题");
			ydyblog.setUrl("lixianyuan.org" + i);
			ydyblog.setYdyblogid("123123id" + i);
			int result = ydyBlogService.insertYdyblog(ydyblog);
		}
		// System.out.println("插入成功了吗?"+result);
	}*/

	//修改
	/*@Test
	public void updateydyblog() {
		Ydyblog ydyblog = new Ydyblog();
		ydyblog.setYdyblogid("123123id");//根据主键id来修改的
		ydyblog.setTitle("标题李贤元");
		ydyblog.setUrl("www.lixianyuan.org");
		int result = ydyBlogService.updateYdyblog(ydyblog);
		System.out.println("修改成功了吗？"+result);//修改成功返回1
	}*/
	
	//删除
	/*@Test
	public void delydyBlog() {
		String ydyId = "123123id10";
		int result = ydyBlogService.delYdyblog(ydyId);//根据id删除
		System.out.println("删除成功了吗？"+result);//删除成功返回1
	}*/
	
	// 查询符合条件的所有有道云笔记 ok
	/*@Test
	public void findAllydyblogByCondition() {
		Map<String, Object> mapYdy = new LinkedHashMap<String, Object>();
		// map.put("ydyblogId", value);
		//封装查询条件
		//当前页页号
		int currentPage = 1;//表示第一页
		//每页显示的记录数
		int currentCount = 15;
		mapYdy.put("title", "标题");
		mapYdy.put("url", "");
		mapYdy.put("currentPage", (currentPage-1)*currentCount);//(当前页页号-1)*每页显示的记录数
		mapYdy.put("currentCount", currentCount);
		List<Ydyblog> ydyblogList = ydyblogCustomMapper.findAllydyblogByCondigion(mapYdy);
		System.out.println("总记录数：" + ydyblogList.size());
		for(Ydyblog ele:ydyblogList) {
			System.out.println(ele.getTitle()+":"+ele.getUrl());
		}
	}
*/
	// 查询符合条件的总记录数ok
	/*@Test
	public void findAllCount() {
		Map<String, Object> mapYdy = new LinkedHashMap<String, Object>();
		//封装查询条件
		mapYdy.put("title", "标题");
		mapYdy.put("url", "");
		int count = ydyblogCustomMapper.findAllydyblogCountByCondigion(mapYdy);
		System.out.println("总记录数：" + count);
	}*/

}
