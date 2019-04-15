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
	 * 根据条件查询出符合条件的博客园笔记
	 * 
	 * @param map 查询条件，包括当前页页号currentPage，每页显示的记录数currentCount
	 * @return 符合条件的博客园笔记
	 */
	public List<Bkyblog> findAllbkyBlogByCondition(Map<String, Object> map);

	/**
	 * 根据条件查询出符合条件的博客园笔记的总记录数
	 * @param map 查询条件，包括当前页页号currentPage，每页显示的记录数currentCount
	 * @return 总记录数
	 */
	public int findAllbkyBlogCountByCondition(Map<String, Object> map);
}
