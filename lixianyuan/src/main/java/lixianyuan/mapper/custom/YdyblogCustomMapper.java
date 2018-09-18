package lixianyuan.mapper.custom;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Ydyblog;

//自定义的mapper
public interface YdyblogCustomMapper {
	
	/**
	 * 根据查询条件查询出符合的有道云笔记
	 * @param map	封装查询的条件，包括当前页页号和每页显示的记录数
	 * @return 符合条件的有道云笔记
	 */
	public List<Ydyblog>findAllydyblogByCondigion(Map<String,Object> map);
	
	/**
	 * 根据查询条件查询出符合的有道云笔记的总条数
	 * @param map	封装查询的条件，包括当前页页号和每页显示的记录数
	 * @return 符合条件的有道云笔记
	 */
	public int findAllydyblogCountByCondigion(Map<String,Object> map);
}