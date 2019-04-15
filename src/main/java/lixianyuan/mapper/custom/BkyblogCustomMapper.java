package lixianyuan.mapper.custom;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Bkyblog;

public interface BkyblogCustomMapper {

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
