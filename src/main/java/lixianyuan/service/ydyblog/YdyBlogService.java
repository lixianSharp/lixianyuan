package lixianyuan.service.ydyblog;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Ydyblog;

public interface YdyBlogService {
	
	/**
	 * 插入
	 * @param ydyblog
	 * @return 
	 */
	public abstract int insertYdyblog(Ydyblog ydyblog);
	
	/**
	 * 修改
	 * @param ydyblog
	 * @return
	 */
	public abstract int updateYdyblog(Ydyblog ydyblog);
	
	
	/**
	 * 删除，根据id删除
	 * @param ydyId id
	 * @return
	 */
	public abstract int delYdyblog(String ydyId);
	
	/**
	 * 根据条件查询出符合的有道云笔记
	 * @param map 封装查询条件，包括当前页页号currentPage和每页显示的记录数currentCount
	 * @return 符合条件的有道云笔记
	 */
	public abstract List<Ydyblog> findAllydyblogByCondigion(Map<String,Object> map);
	
	/**
	 * 根据条件查询出符合的有道云笔记的总条数
	 * @param map 封装查询条件，包括当前页页号currentPage和每页显示的记录数currentCount
	 * @return 总条数
	 */
	public abstract int findAllydyblogCountByCondigion(Map<String,Object> map);
}
