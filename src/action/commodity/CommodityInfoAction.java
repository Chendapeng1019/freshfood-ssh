package action.commodity;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import mo.CommodityMo;
import mo.CommodityNamesMo;
import mo.Images_ViewMo;
import service.CommodityService;

public class CommodityInfoAction extends ActionSupport {

	private CommodityService commodityService;
	private int comm_id;
	private CommodityMo commodityinfo = new CommodityMo();
	private CommodityNamesMo commoditynames = new CommodityNamesMo();
	private List<Images_ViewMo> commodityimages = new ArrayList<Images_ViewMo>();

	public String commodityInfo() throws Exception {

		commodityinfo = commodityService.CommodityInfo(comm_id);
		commoditynames = commodityService.CommodityNames(comm_id);
		commodityimages = commodityService.getImages(comm_id);
		return SUCCESS;
	}

	public void setCommodityService(CommodityService commodityService) {
		this.commodityService = commodityService;
	}

	public CommodityMo getCommodityinfo() {
		return commodityinfo;
	}

	public CommodityNamesMo getCommoditynames() {
		return commoditynames;
	}

	public List<Images_ViewMo> getCommodityimages() {
		return commodityimages;
	}

	public void setComm_id(int comm_id) {
		this.comm_id = comm_id;
	}

}
