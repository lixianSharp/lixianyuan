package lixianyuan.controller.pageredirect;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lixianyuan.bean.Ydyblog;
import lixianyuan.service.ydyblog.YdyBlogService;
import lixianyuan.util.PageBean;
import lixianyuan.util.UUIDUtil;

@Controller
@RequestMapping("/page")
public class PageRedirectAction {

	@Autowired
	private YdyBlogService ydyBlogService;

	// 博客笔记
	@RequestMapping("/bknote")
	public String bknote() throws Exception {
		return "frontPage/ydyblogMenu/rightShow";
	}

	// 闲言碎语
	@RequestMapping("/xysy")
	public String xysy() throws Exception {
		return "frontPage/xysy";
	}

	// 随笔
	@RequestMapping("/sb")
	public String sb() throws Exception {
		return "frontPage/casualnote";
	}

	// 学习资源分享
	@RequestMapping("/learnSource")
	public String learnSource() throws Exception {
		return "frontPage/studyResource";
	}

	// 相册
	@RequestMapping("/pic")
	public String pic() throws Exception {
		return "frontPage/photo";
	}

	// 相册2
	@RequestMapping("/pic2")
	public String pic2() throws Exception {
		return "frontPage/photo2";
	}

	// 给我留言
	@RequestMapping("/leavemsg")
	public String leavemsg() throws Exception {
		return "frontPage/leavemsgfront";
	}

	// 留言墙
	@RequestMapping("/showleavemsg")
	public String showleavemsg() throws Exception {
		return "frontPage/showleavemsg";
	}

	// 后台管理
	@RequestMapping("/htgl")
	public String htgl() throws Exception {
		return "manage/public/index";
	}

	// 小桥1
	@RequestMapping("/lqx")
	public String lqx() throws Exception {
		return "frontPage/lqx/lqx";
	}

	// 小桥1
	@RequestMapping("/lqx2")
	public String lqx2() throws Exception {
		return "frontPage/lqx/lqx2";
	}

}
