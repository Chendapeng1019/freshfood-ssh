package dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import mo.JieSuan_ViewMo;
import mo.OrderMo;
import mo.OrderdetailsMo;
import mo.ShopCar_ViewMo;
import mo.ShoppingCarMo;

public class CartItemDaoImpl extends HibernateDaoSupport implements CartItemDao {

	public ShoppingCarMo CheckShopCar(int comm_id, int cust_id) {
		String hql = "from ShoppingCarMo where comm_id= ? and cust_id= ?";
		List<ShoppingCarMo> list = this.getHibernateTemplate().find(hql, comm_id, cust_id);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public void AddShopCar(ShoppingCarMo shoppingCarMo) {
		this.getHibernateTemplate().save(shoppingCarMo);

	}

	public void UpdateShopCar(ShoppingCarMo carMo,int comm_number) {
		int shop_id=carMo.getShop_id();
		String sql="update shoppingcart set comm_number="+comm_number+""
				+ " where shop_id="+shop_id+"";
		SQLQuery query=this.getSession().createSQLQuery(sql);
		query.executeUpdate();
	}
	

	public ShopCar_ViewMo JoinSucceed(int comm_id, int cust_id, int number) {

		String hql = "from ShopCar_ViewMo  where comm_id=? and cust_id=? ";
		List<ShopCar_ViewMo> shopCarList = this.getHibernateTemplate().find(hql, comm_id, cust_id);
		ShopCar_ViewMo carMo = shopCarList.get(0);
		//carMo.setComm_number(number);
		return carMo;
	}

	public List<ShopCar_ViewMo> getMyShoppingCar(int cust_id) {
		String hql = " from ShopCar_ViewMo  where cust_id=?  order by join_time desc";
		List<ShopCar_ViewMo> shopCarList = this.getHibernateTemplate().find(hql, cust_id);
		return shopCarList;
	}

	
	public void UpdateShopCar(ShoppingCarMo carMo) {
		
		this.getHibernateTemplate().update(carMo);
	}

	public ShoppingCarMo getShoppingCar(int cust_id, int comm_id) {
		String hql="from ShoppingCarMo where cust_id=? and comm_id=?";
		List<ShoppingCarMo> shoppingCarMoList=this.getHibernateTemplate().find(hql, cust_id,comm_id);
		if(shoppingCarMoList!=null&&shoppingCarMoList.size()>0) {
		return shoppingCarMoList.get(0);
		}
		return null;
	}

	
	public int ChangNumber(ShoppingCarMo shoppingCarMo,int comm_number) {
		int flag=1;
		shoppingCarMo.setComm_number(comm_number);
		this.getHibernateTemplate().update(shoppingCarMo);
		return flag;
	}

	
	public int DeleteShopCar(ShoppingCarMo shoppingCarMo) {
		this.getHibernateTemplate().delete(shoppingCarMo);
		int flag=1;
		return flag;
	}

	
	public OrderMo AddOrder(OrderMo orderMo) {
		this.getHibernateTemplate().save(orderMo);
		
		return orderMo;
	}

	
	public void AddOrderDetails(ShoppingCarMo shoppingCarMo, int order_id) {
		OrderdetailsMo orderdetailsMo=new OrderdetailsMo();
		orderdetailsMo.setOrder_id(order_id);
		orderdetailsMo.setComm_id(shoppingCarMo.getComm_id());
		orderdetailsMo.setComm_number(shoppingCarMo.getComm_number());
		orderdetailsMo.setComm_price(shoppingCarMo.getComm_price());
		orderdetailsMo.setIs_comment(0);
		this.getHibernateTemplate().save(orderdetailsMo);
		
	}

	
	public List<JieSuan_ViewMo> GetOrderList(int order_id) {
		String hql=" from JieSuan_ViewMo where order_id=?";
		List<JieSuan_ViewMo> orderList=this.getHibernateTemplate().find(hql, order_id);
		return orderList;
	}

	
	public List<OrderdetailsMo> GetOrderDetailsList(int order_id) {
		String hql="from OrderdetailsMo where order_id=?";
		return this.getHibernateTemplate().find(hql, order_id);
	}

	

	




}
