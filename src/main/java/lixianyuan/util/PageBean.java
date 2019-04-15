package lixianyuan.util;

import java.util.ArrayList;
import java.util.List;

//用于分页
public class PageBean <T>{

	private String currentPage;// 当前页页号
	private String currentCount;// 每页显示的记录数
	private int sumTotal;// 总记录数
	private List<T> pageList = new ArrayList<T>();// 当前页要显示的数据
	public String getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	public String getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(String currentCount) {
		this.currentCount = currentCount;
	}
	public int getSumTotal() {
		return sumTotal;
	}
	public void setSumTotal(int sumTotal) {
		this.sumTotal = sumTotal;
	}
	public List<T> getPageList() {
		return pageList;
	}
	public void setPageList(List<T> pageList) {
		this.pageList = pageList;
	}

	

}
