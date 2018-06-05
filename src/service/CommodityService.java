package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import dao.CommodityDao;
import mo.Activity_ViewMo;
import mo.CommodityMo;
import mo.CommodityNamesMo;
import mo.Commodity_ViewMo;
import mo.Images_ViewMo;
import mo.ShopCar_ViewMo;
import utils.PageBean;

@Transactional
public class CommodityService {
	private CommodityDao commodityDao;

	public void setCommodityDao(CommodityDao commodityDao) {
		this.commodityDao = commodityDao;
	}

	public List<Commodity_ViewMo> getIndexCommodity(String commodityTypeName) {

		return commodityDao.getIndexCommodity(commodityTypeName);
	}

	public List<Activity_ViewMo> getActivityCommodity() {

		return commodityDao.getActivityCommodity();
	}

	public int getSearchNumber(String search) {

		return commodityDao.getSearchNumber(search);
	}

	public List<Commodity_ViewMo> getSearchCommodity(int currentPage, int pageSize, String search, String selectsort) {

		return commodityDao.getSearchCommodity(currentPage, pageSize, search, selectsort);
	}

	public CommodityMo CommodityInfo(int comm_id) {

		return commodityDao.CommodityInfo(comm_id);
	}

	public CommodityNamesMo CommodityNames(int comm_id) {

		return commodityDao.CommodityNames(comm_id);
	}

	public List<Images_ViewMo> getImages(int comm_id) {

		return commodityDao.getImages(comm_id);
	}



	/*
	 * public void getIndex(List<Activity_ViewMo> commodityList,
	 * List<Commodity_ViewMo> fruits, List<Commodity_ViewMo> egg,
	 * List<Commodity_ViewMo> seafood, List<Commodity_ViewMo> meat,
	 * List<Commodity_ViewMo> vegetables, List<Commodity_ViewMo> milk,
	 * List<Commodity_ViewMo> fastfood, List<Commodity_ViewMo> grain) {
	 * commodityList=commodityDao.getActivityCommodity();
	 * fruits=commodityDao.getIndexCommodity("优质水果");
	 * egg=commodityDao.getIndexCommodity("禽品蛋类");
	 * seafood=commodityDao.getIndexCommodity("海鲜水产");
	 * meat=commodityDao.getIndexCommodity("精选肉类");
	 * vegetables=commodityDao.getIndexCommodity("新鲜蔬菜");
	 * milk=commodityDao.getIndexCommodity("乳品糕点");
	 * fastfood=commodityDao.getIndexCommodity("方便速食");
	 * grain=commodityDao.getIndexCommodity("粮油杂货");
	 * 
	 * 
	 * }
	 */

}
