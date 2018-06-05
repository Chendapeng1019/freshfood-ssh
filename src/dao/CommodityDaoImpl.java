package dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import mo.Activity_ViewMo;
import mo.CommodityMo;
import mo.CommodityNamesMo;
import mo.Commodity_ViewMo;
import mo.Images_ViewMo;

public class CommodityDaoImpl extends HibernateDaoSupport implements CommodityDao {

	public List<Commodity_ViewMo> getIndexCommodity(String commodityTypeName) {
		String sql = "select * from commodity_view  where bigtype_name=? order by putaway_time desc  limit 7";
		SQLQuery query = this.getSession().createSQLQuery(sql);
		query.setParameter(0, commodityTypeName);
		query.addEntity(Commodity_ViewMo.class);
		List<Commodity_ViewMo> commodityList = query.list();
		return commodityList;
	}

	public List<Activity_ViewMo> getActivityCommodity() {
		String sql = "select * from Activity_View   order by activity_time desc  limit 4";
		SQLQuery query = this.getSession().createSQLQuery(sql);
		query.addEntity(Activity_ViewMo.class);
		List<Activity_ViewMo> commodityList = query.list();
		return commodityList;
	}

	public int getSearchNumber(String search) {

		String hql = "select count(*) from  Commodity_ViewMo "
				+ " where CONCAT( commodity_name , comm_name_plus, smalltype_name , bigtype_name ) like ?";

		Number number = (Number) this.getHibernateTemplate().find(hql, "%" + search + "%").listIterator().next();
		return number.intValue();

	}

	public List<Commodity_ViewMo> getSearchCommodity(int currentPage, int pageSize, String search, String selectsort) {

		if (currentPage < 1 || pageSize < 1) {
			return null;
		}
		String sql = null;
		if (selectsort.equals("zhonghe") == true) {
			sql = "select * from commodity_view "
					+ " where CONCAT( commodity_name , comm_name_plus, smalltype_name , bigtype_name ) like ?"
					+ " LIMIT " + ((currentPage - 1) * pageSize) + "," + pageSize + "";
		}

		if (selectsort.equals("xiaoliang") == true) {
			sql = "select * from commodity_view "
					+ " where CONCAT( commodity_name , comm_name_plus, smalltype_name , bigtype_name ) like ? "
					+ " order by sales_number desc LIMIT " + ((currentPage - 1) * pageSize) + " ," + pageSize + " ";
		}

		if (selectsort.equals("jiage") == true) {
			sql = "select * from commodity_view "
					+ " where CONCAT( commodity_name , comm_name_plus, smalltype_name , bigtype_name ) like ? "
					+ " order by comm_price  LIMIT " + ((currentPage - 1) * pageSize) + " ," + pageSize + " ";
		} else {
			sql = "select * from commodity_view "
					+ " where CONCAT( commodity_name , comm_name_plus, smalltype_name , bigtype_name ) like ? "
					+ " order by comment_number desc LIMIT " + ((currentPage - 1) * pageSize) + " ," + pageSize + " ";
		}

		SQLQuery query = this.getSession().createSQLQuery(sql);
		query.setParameter(0, "%" + search + "%");
		query.addEntity(Commodity_ViewMo.class);
		List<Commodity_ViewMo> cList = query.list();
		return cList;
	}

	public CommodityMo CommodityInfo(int comm_id) {
		String hql = "from CommodityMo where comm_id=? ";
		CommodityMo cMo = null;
		List<CommodityMo> cList = this.getHibernateTemplate().find(hql, comm_id);
		if (cList != null && cList.size() > 0) {
			cMo = cList.get(0);
		}
		return cMo;
	}

	public mo.CommodityNamesMo CommodityNames(int comm_id) {
		String hql="from CommodityNamesMo where comm_id=? ";
		CommodityNamesMo cNamesMo=null;
		List<CommodityNamesMo> cNamesList=this.getHibernateTemplate().find(hql, comm_id);
		if(cNamesList!=null&&cNamesList.size()>0) {
			cNamesMo=cNamesList.get(0);
		}
		return cNamesMo;
	}

	public List<Images_ViewMo> getImages(int comm_id) {
		String hql="from Images_ViewMo where comm_id=?";
		List<Images_ViewMo> imagesList=this.getHibernateTemplate().find(hql, comm_id);
		return imagesList;
	}

	
	public CommodityMo GetCommodity(int comm_id) {
		return this.getHibernateTemplate().get(CommodityMo.class, comm_id);
	}

	
	public void UpdateCommodity(CommodityMo commodityMo) {
		this.getHibernateTemplate().update(commodityMo);
		
	}
	
	

}
