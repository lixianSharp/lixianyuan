package lixianyuan.mapper.custom;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Photo;

public interface PhotoCustomMapper {
	
	/**
	 * 查询出符合条件的照片
	 * @param map 封装查询条件，包括当前页页号currentPage,每页显示的记录数currentPage
	 * @return
	 */
	public List<Photo> findAllPhotoByCondition(Map<String, Object> map);

	/**
	 * 查询出符合条件的照片的总记录数
	 * @param map 封装查询条件，包括当前页页号currentPage,每页显示的记录数currentPage
	 * @return 符合条件的总记录数
	 */
	public int findAllPhotoCountByCondition(Map<String, Object> map);
}
