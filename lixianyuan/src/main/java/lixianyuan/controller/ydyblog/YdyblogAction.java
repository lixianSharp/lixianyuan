package lixianyuan.controller.ydyblog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ydy")
public class YdyblogAction {
	
	@RequestMapping("/hello")
	public String hello()throws Exception{
		System.out.println("进入controller拉");
		return "index";
	}
}
