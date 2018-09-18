package lixianyuan.service.bky;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Bkyblog;

public interface BkyblogService {
	/**
	 * 增加博客园博客
	 * @param bkyblog
	 * @return
	 */
	public abstract int addBkyblog(Bkyblog bkyblog);
	
	/**
	 * 修改博客园博客
	 * @param bkyblog
	 * @return
	 */
	public abstract int updateBkyblog(Bkyblog bkyblog);
	
	/**
	 * 删除博客园博客 根据id删除
	 * @param bkyblogId
	 * @return
	 */
	public abstract int delBkyblog(String bkyblogId);
	
	/**
	 * 查询出所有在博客园中的博客
	 * @param bkyblog
	 * @return
	 */
	public abstract List<Bkyblog> findAllBkyblog(Map map);
}
