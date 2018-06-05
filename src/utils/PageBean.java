package utils;

import java.util.ArrayList;
import java.util.List;

public class PageBean<T> {

	private List<T> pageList; // 分页后的记录信息
	private int pageSize=10; // 一页显示的记录数，默认为10条
	private int rowCount; // 要分页记录的总数
	private int pageCount; // 记录总页数
	private int currentPage = 1; // 当前页
	private boolean firstPage; // 是否为第一页
	private boolean lastPage; // 是否为最后一页
	private int previousPageCount; // 上一页
	private int nextPageCount; // 下一页
	private List<Integer> pageNumList;

	public List<Integer> getPageNumList() {
		return pageNumList;
	}

	public List<T> getPageList() {
		return pageList;
	}

	public void setPageList(List<T> pageList) {
		this.pageList = pageList;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
		// 计算总的页数
		pageCount = rowCount % pageSize == 0 ? rowCount / pageSize : rowCount / pageSize + 1;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		if (currentPage > pageCount) {
			this.currentPage = pageCount;
		}

		if (currentPage < 1) {
			this.currentPage = 1;
		}

		// 上一页
		previousPageCount = currentPage - 1;
		// 下一页
		nextPageCount = currentPage + 1;

		// 判断是否为第一页
		if (this.currentPage == 1) {
			firstPage = true;
		} else {
			firstPage = false;
		}

		// 判断是否为最后一页
		if (this.currentPage == pageCount) {
			lastPage = true;
		} else {
			lastPage = false;
		}

		int pageIndexFront, pageIndexEnd, i;

		pageIndexFront = (this.currentPage > 3) ? this.currentPage - 3 : 1;
		pageIndexEnd = (pageIndexFront + 6 > pageCount) ? pageCount : pageIndexFront + 6;

		pageNumList = new ArrayList<Integer>();
		for (i = pageIndexFront; i <= pageIndexEnd; i++) {
			pageNumList.add(new Integer(i));
		}

	}

	public boolean isFirstPage() {
		return firstPage;
	}

	public void setFirstPage(boolean firstPage) {
		this.firstPage = firstPage;
	}

	public boolean isLastPage() {
		return lastPage;
	}

	public void setLastPage(boolean lastPage) {
		this.lastPage = lastPage;
	}

	public int getPreviousPageCount() {
		return previousPageCount;
	}

	public void setPreviousPageCount(int previousPageCount) {
		this.previousPageCount = previousPageCount;
	}

	public int getNextPageCount() {
		return nextPageCount;
	}

	public void setNextPageCount(int nextPageCount) {
		this.nextPageCount = nextPageCount;
	}

}
