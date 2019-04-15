package lixianyuan.service.casualnote.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Casualnote;
import lixianyuan.mapper.CasualnoteMapper;
import lixianyuan.mapper.custom.CasualnoteCustomMapper;
import lixianyuan.service.casualnote.CasualnoteService;

@Service
public class CasualnoteServiceImpl implements CasualnoteService{
	
	@Autowired
	private CasualnoteMapper casualnoteMapper;
	
	@Autowired
	private CasualnoteCustomMapper casualnoteCustomMapper;
	
	/**
	 * 增加随笔
	 * @param casualnote
	 * @return
	 */
	public int addCasualnote(Casualnote casualnote) {
		int result = casualnoteMapper.insert(casualnote);
		return result>0?result:0;
	}
	
	/**
	 * 修改随笔
	 * @param casualnote
	 * @return
	 */
	public int updateCasualnote(Casualnote casualnote) {
		int result = casualnoteMapper.updateByPrimaryKeySelective(casualnote);
		return result>0?result:0;
	}
	
	/**
	 * 根据随笔主键id删除随笔
	 * @param casualNoteId
	 * @return
	 */
	public int delCasualnoteBycasualNoteId(String casualNoteId) {
		int result = casualnoteMapper.deleteByPrimaryKey(casualNoteId);
		return result>0?result:0;
	}
	
	
	
	/**
	 * 查询出所有符合条件的随笔
	 * @param map 封装查询条件 包括当前页页号和每页显示的记录数
	 * @return 符合条件的随笔
	 */
	public List<Casualnote> findAllCasualNoteByCondition(Map<String, Object> map){
		List<Casualnote> casualnoteList = casualnoteCustomMapper.findAllCasualNoteByCondition(map);
		return casualnoteList.size()>0?casualnoteList:null;
	}
	
	/**
	 * 查询出所有符合条件的随笔总记录数
	 * @param map 封装查询条件 包括当前页页号和每页显示的记录数
	 * @return 符合条件的总记录数
	 */
	public int findAllCasualNoteCountByCondition(Map<String,Object> map) {
		int result = casualnoteCustomMapper.findAllCasualNoteCountByCondition(map);
		return result>0?result:0;
	}
	
}