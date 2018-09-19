package lixianyuan.mapper.custom;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Casualnote;

public interface CasualnoteCustomMapper {
	/**
	 * 查询出所有符合条件的随笔
	 * @param map 封装查询条件 包括当前页页号和每页显示的记录数
	 * @return 符合条件的随笔
	 */
	public List<Casualnote> findAllCasualNoteByCondition(Map<String, Object> map);
	
	/**
	 * 查询出所有符合条件的随笔总记录数
	 * @param map 封装查询条件 包括当前页页号和每页显示的记录数
	 * @return 符合条件的总记录数
	 */
	public int findAllCasualNoteCountByCondition(Map<String,Object> map);
}
