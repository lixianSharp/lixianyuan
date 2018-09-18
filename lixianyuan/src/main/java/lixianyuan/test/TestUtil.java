package lixianyuan.test;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:SpringMVC.xml", "classpath*:applicationContext-dao.xml" }) 
/*@ContextConfiguration("classpath:SpringMVC.xml,applicationContext-dao.xml")
*/
public class TestUtil {

	//@Autowired
	//private YdyBlogService ydyBlogService;
	
	/*@Test
	public void insertydyblog() {
		Ydyblog ydyblog = new Ydyblog();
		ydyblog.setTitle("标题");
		ydyblog.setUrl("lixianyuan.org");
		ydyblog.setYdyblogid("123123id");
		int result = ydyBlogService.insertYdyblog(ydyblog);
		System.out.println("插入成功了吗?"+result);
	}*/
}
