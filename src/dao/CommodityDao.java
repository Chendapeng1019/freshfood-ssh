package dao;

import java.util.List;

import mo.Activity_ViewMo;
import mo.CommodityMo;
import mo.CommodityNamesMo;
import mo.Commodity_ViewMo;
import mo.Images_ViewMo;
import mo.ShopCar_ViewMo;

public interface CommodityDao {

	List<Commodity_ViewMo> getIndexCommodity(String commodityTypeName);

	List<Activity_ViewMo> getActivityCommodity();

	int getSearchNumber(String search);

	List<Commodity_ViewMo> getSearchCommodity(int currentPage, int pageSize, String search, String selectsort);

	CommodityMo CommodityInfo(int comm_id);

	CommodityNamesMo CommodityNames(int comm_id);

	List<Images_ViewMo> getImages(int comm_id);

	CommodityMo GetCommodity(int comm_id);

	void UpdateCommodity(CommodityMo commodityMo);

	
  
}
