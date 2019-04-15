package lixianyuan.service.photo;

import java.util.List;
import java.util.Map;

import lixianyuan.bean.Photo;

public interface PhotoService {
	/**
	 * 增加照片
	 * 
	 * @param photo
	 * @return
	 */
	public int addPhoto(Photo photo);

	/**
	 * 修改照片
	 * 
	 * @param photo
	 *            修改后的照片的javabean，但是id不能被改变
	 * @return
	 */
	public int updatePhoto(Photo photo);

	/**
	 * 删除照片，根据照片id删除
	 * 
	 * @param photoId
	 * @return
	 */
	public int delPhotoByphotoId(String photoId);

	/**
	 * 查询出符合条件的照片
	 * 
	 * @param map
	 *            封装查询条件，包括当前页页号currentPage,每页显示的记录数currentPage
	 * @return
	 */
	public List<Photo> findAllPhotoByCondition(Map<String, Object> map);

	/**
	 * 查询出符合条件的照片的总记录数
	 * 
	 * @param map
	 *            封装查询条件，包括当前页页号currentPage,每页显示的记录数currentPage
	 * @return 符合条件的总记录数
	 */
	public int findAllPhotoCountByCondition(Map<String, Object> map);
}
