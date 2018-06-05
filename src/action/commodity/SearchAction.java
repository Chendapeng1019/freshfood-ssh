package action.commodity;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import mo.Commodity_ViewMo;
import service.CommodityService;
import utils.PageBean;

public class SearchAction extends ActionSupport {

	private CommodityService commodityService;
	private String selectsort;
	private String curPage;
	private String search;
	private PageBean<Commodity_ViewMo> pagebean = new PageBean<Commodity_ViewMo>();

	public String search() throws Exception {

		if (selectsort == null || selectsort.equals("")) {
			selectsort = "zhonghe";
		}

		int intPage = 1;
		if (curPage == null || curPage.equals("")) {
			curPage = "1";
		}

		intPage = Integer.parseInt(curPage);
		int rowCount = 0;
		rowCount = commodityService.getSearchNumber(search);

		int size = 10;

		pagebean.setRowCount(rowCount);
		pagebean.setPageSize(size);
		pagebean.setCurrentPage(intPage);

		List<Commodity_ViewMo> cList = null;

		cList = commodityService.getSearchCommodity(pagebean.getCurrentPage(), pagebean.getPageSize(), search,
				selectsort);

		pagebean.setPageList(cList);

		return SUCCESS;
	}

	public void setCommodityService(CommodityService commodityService) {
		this.commodityService = commodityService;
	}

	public void setCurPage(String curPage) {
		this.curPage = curPage;
	}

	public String getSelectsort() {
		return selectsort;
	}

	public void setSelectsort(String selectsort) {
		this.selectsort = selectsort;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public PageBean<Commodity_ViewMo> getPagebean() {
		return pagebean;
	}

}
