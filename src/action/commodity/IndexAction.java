package action.commodity;

import java.util.List;

import org.aspectj.weaver.Utils;

import com.opensymphony.xwork2.ActionSupport;

import mo.Activity_ViewMo;
import mo.Commodity_ViewMo;
import service.CommodityService;
import service.UserService;

public class IndexAction extends ActionSupport {

	private CommodityService commodityService;
	private List<Activity_ViewMo> commodityList;
	private List<Commodity_ViewMo> fruits;
	private List<Commodity_ViewMo> egg;
	private List<Commodity_ViewMo> seafood;
	private List<Commodity_ViewMo> meat;
	private List<Commodity_ViewMo> vegetables;
	private List<Commodity_ViewMo> milk;
	private List<Commodity_ViewMo> fastfood;
	private List<Commodity_ViewMo> grain;

	public String index() throws Exception {
		this.commodityList = commodityService.getActivityCommodity();
		this.fruits = commodityService.getIndexCommodity("优质水果");
		this.egg = commodityService.getIndexCommodity("禽品蛋类");
		this.seafood = commodityService.getIndexCommodity("海鲜水产");
		this.meat = commodityService.getIndexCommodity("精选肉类");
		this.vegetables = commodityService.getIndexCommodity("新鲜蔬菜");
		this.milk = commodityService.getIndexCommodity("乳品糕点");
		this.fastfood = commodityService.getIndexCommodity("方便速食");
		this.grain = commodityService.getIndexCommodity("粮油杂货");

		return SUCCESS;
	}

	public void setCommodityService(CommodityService commodityService) {
		this.commodityService = commodityService;
	}

	public List<Activity_ViewMo> getCommodityList() {
		return commodityList;
	}

	public List<Commodity_ViewMo> getFruits() {
		return fruits;
	}

	public List<Commodity_ViewMo> getEgg() {
		return egg;
	}

	public List<Commodity_ViewMo> getSeafood() {
		return seafood;
	}

	public List<Commodity_ViewMo> getMeat() {
		return meat;
	}

	public List<Commodity_ViewMo> getVegetables() {
		return vegetables;
	}

	public List<Commodity_ViewMo> getMilk() {
		return milk;
	}

	public List<Commodity_ViewMo> getFastfood() {
		return fastfood;
	}

	public List<Commodity_ViewMo> getGrain() {
		return grain;
	}

}
