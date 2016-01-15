/**
 * 
 */
package cn.edu.tju.util;

import java.util.List;
import java.util.Map;

/**
 * 分页封装类
 * @author xiongzq
 *
 */
public class Pager<E> {
	
	private int pageSize;//每页显示多少条
	private int pageIndex;//分页的开始值
	private int totalRecord;//总共多少条记录
	private List<E> results;//放置具体数据的列表
	private Map<String,Boolean> orders;//排序
	
	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}
	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	/**
	 * @return the pageOffset
	 */
	public int getPageIndex() {
		return pageIndex;
	}
	/**
	 * @param pageOffset the pageOffset to set
	 */
	public void setPageIndex(int pageOffset) {
		this.pageIndex = pageOffset;
	}
	/**
	 * @return the totalRecord
	 */
	public int getTotalRecord() {
		return totalRecord;
	}
	/**
	 * @param totalRecord the totalRecord to set
	 */
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	/**
	 * @return the totalPage
	 */
	public int getTotalPage() {
		return ((this.totalRecord-1)/this.pageSize +1);
	}

	/**
	 * @return the datas
	 */
	public List<E> getResults() {
		return results;
	}
	/**
	 * @param datas the datas to set
	 */
	public void setResults(List<E> results) {
		this.results = results;
	}
	/**
	 * @return the orders
	 */
	public Map<String, Boolean> getOrders() {
		return orders;
	}
	/**
	 * @param orders the orders to set
	 */
	public void setOrders(Map<String, Boolean> orders) {
		this.orders = orders;
	}
	

	
}

