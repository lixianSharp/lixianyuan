package lixianyuan.service.photo.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lixianyuan.bean.Photo;
import lixianyuan.mapper.PhotoMapper;
import lixianyuan.mapper.custom.PhotoCustomMapper;
import lixianyuan.service.photo.PhotoService;

@Service
public class PhotoServiceImpl implements PhotoService {

	@Autowired
	private PhotoMapper photoMapper;

	@Autowired
	private PhotoCustomMapper photoCustomMapper;

	/**
	 * 增加照片
	 * @param photo
	 * @return
	 */
	public int addPhoto(Photo photo) {
		int result = photoMapper.insert(photo);
		return result > 0 ? result : 0;
	}

	/**
	 * 修改照片
	 * @param photo 修改后的照片的javabean，但是id不能被改变
	 * @return
	 */
	public int updatePhoto(Photo photo) {
		int result = photoMapper.updateByPrimaryKeySelective(photo);
		return result > 0 ? result : 0;
	}

	/**
	 * 删除照片，根据照片id删除
	 * @param photoId
	 * @return
	 */
	public int delPhotoByphotoId(String photoId) {
		int result = photoMapper.deleteByPrimaryKey(photoId);
		return result > 0 ? result : 0;
	}

	/**
	 * 查询出符合条件的照片
	 * 
	 * @param map
	 *            封装查询条件，包括当前页页号currentPage,每页显示的记录数currentPage
	 * @return
	 */
	public List<Photo> findAllPhotoByCondition(Map<String, Object> map) {
		List<Photo> photoList = photoCustomMapper.findAllPhotoByCondition(map);
		return photoList.size() > 0 ? photoList : null;
	}

	/**
	 * 查询出符合条件的照片的总记录数
	 * 
	 * @param map
	 *            封装查询条件，包括当前页页号currentPage,每页显示的记录数currentPage
	 * @return 符合条件的总记录数
	 */
	public int findAllPhotoCountByCondition(Map<String, Object> map) {
		int count = photoCustomMapper.findAllPhotoCountByCondition(map);
		return count > 0 ? count : 0;
	}

}
