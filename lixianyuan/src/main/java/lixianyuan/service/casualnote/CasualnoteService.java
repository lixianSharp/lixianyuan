package lixianyuan.service.casualnote;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Casualnote;

public interface CasualnoteService {
	/**
	 * 增加随笔
	 * @param casualnote
	 * @return
	 */
	public int addCasualnote(Casualnote casualnote);
	
	/**
	 * 修改随笔
	 * @param casualnote
	 * @return
	 */
	public int updateCasualnote(Casualnote casualnote);
	
	/**
	 * 根据随笔主键id删除随笔
	 * @param casualNoteId
	 * @return
	 */
	public int delCasualnoteBycasualNoteId(String casualNoteId);
	
	
	
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
