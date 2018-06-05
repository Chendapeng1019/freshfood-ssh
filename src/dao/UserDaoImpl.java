package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import mo.AreasMo;
import mo.CitiesMo;
import mo.OrderMo;
import mo.Order_Commodity_ViewMo;
import mo.Order_Details_ViewMo;
import mo.Order_ViewMo;
import mo.ProvincesMo;
import mo.Receive_InfoMo;
import mo.ShoppingNumberMo;
import mo.ShouHuoInfo_ViewMo;
import mo.UserMo;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public int CheckUser(String cust_phone) {
		int flag = 0;

		String sql = "from UserMo where cust_phone=?";

		List<UserMo> userMoList = this.getHibernateTemplate().find(sql, cust_phone);

		if (userMoList != null && userMoList.size() > 0) {
			flag = 1;
		}
		return flag;
	}

	public int CheckPassword(String cust_phone, String cust_password) {
		int flag = 0;
		String sql = "from UserMo where cust_phone=? and cust_password=?";
		List<UserMo> userMoList = this.getHibernateTemplate().find(sql, cust_phone, cust_password);
		if (userMoList != null && userMoList.size() > 0) {
			flag = 1;
		}
		return flag;
	}

	public UserMo getUser(String cust_phone) {

		String hql = " from UserMo where cust_phone =?";

		List<UserMo> userList = this.getHibernateTemplate().find(hql, cust_phone);
		if (userList != null && userList.size() > 0)
			return userList.get(0);
		return null;
	}

	public int getShoppingNumber(int cust_id) {
		int shopcarnumber = 0;
		String sql = "from ShoppingNumberMo where cust_id=?";
		List<ShoppingNumberMo> list = this.getHibernateTemplate().find(sql, cust_id);
		if (list != null && list.size() > 0) {
			shopcarnumber = list.get(0).getShoppingnumber().intValue();
		}
		return shopcarnumber;
	}

	public void addUser(UserMo userMo) {

		getHibernateTemplate().save(userMo);
	}

	public void reg(String account, String password) {
		UserMo userMo = new UserMo();
		userMo.setCust_phone(account);
		userMo.setCust_password(password);
		this.getHibernateTemplate().save(userMo);

	}

	public List<Receive_InfoMo> GetUserAddList(int cust_id) {
		String hql = "from Receive_InfoMo where cust_id=?";
		List<Receive_InfoMo> userAddList = this.getHibernateTemplate().find(hql, cust_id);
		if (userAddList != null && userAddList.size() > 0) {
			return userAddList;
		}
		return null;
	}

	public List<ProvincesMo> GetProvinces() {
		String hql = "from ProvincesMo ";
		List<ProvincesMo> provincesList = this.getHibernateTemplate().find(hql);
		return provincesList;
	}

	public List<CitiesMo> GetCity(String provinceid) {
		String hql = "from CitiesMo where provinceid=?";
		List<CitiesMo> citiesList = this.getHibernateTemplate().find(hql, provinceid);
		return citiesList;
	}

	public List<AreasMo> GetArea(String cityid) {
		String hql = "from AreasMo where cityid=?";
		List<AreasMo> areasList = this.getHibernateTemplate().find(hql, cityid);
		return areasList;
	}

	public int UpdateOrder(OrderMo orderMo) {
		this.getHibernateTemplate().update(orderMo);
		int flag = 1;
		return flag;
	}

	public OrderMo GetOrder(int order_id) {

		return this.getHibernateTemplate().get(OrderMo.class, order_id);
	}

	public Receive_InfoMo getReceive_InfoMo(int rece_id) {

		return this.getHibernateTemplate().get(Receive_InfoMo.class, rece_id);
	}

	public void setMoRen0(int cust_id) {

		String sql = "update receive_infot \r\n" + " set moren=0\r\n" + " WHERE cust_id=?";

		SQLQuery query = getSession().createSQLQuery(sql);
		query.setParameter(0, cust_id);
		query.executeUpdate();
	}

	public void setMoRen1(Receive_InfoMo receive_InfoMo) {

		receive_InfoMo.setMoren(1);
		this.getHibernateTemplate().update(receive_InfoMo);
	}

	public void DeleteReceiveInfo(int rece_ID) {
		Receive_InfoMo receive_InfoMo = this.getHibernateTemplate().get(Receive_InfoMo.class, rece_ID);
		this.getHibernateTemplate().delete(receive_InfoMo);

	}

	public void AddReceive(Receive_InfoMo receive_InfoMo) {

		this.getHibernateTemplate().save(receive_InfoMo);
	}

	public ProvincesMo GetProvinceById(String sheng) {
		String hql = "from ProvincesMo where provinceid=?";
		List<ProvincesMo> list = this.getHibernateTemplate().find(hql, sheng);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public CitiesMo GetCityById(String shi) {
		String hql = "from CitiesMo where cityid=?";
		List<CitiesMo> list = this.getHibernateTemplate().find(hql, shi);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	
	public AreasMo GetAreaById(String xianqu) {
		String hql = "from AreasMo where areaid=?";
		List<AreasMo> list= this.getHibernateTemplate().find(hql, xianqu);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	
	public ShouHuoInfo_ViewMo PaySuccess(int order_id) {
		
		return this.getHibernateTemplate().get(ShouHuoInfo_ViewMo.class, order_id);
	}

	
	public List<OrderMo> GetUserOrder(int cust_id) {
		String hql="from OrderMo where cust_id=?";
		return this.getHibernateTemplate().find(hql, cust_id);
	}

	
	public List<Order_ViewMo> OrderInfo(int cust_id, String select) {
		List<Order_ViewMo> orderInfoList=new ArrayList<Order_ViewMo>();
		String hql = null;
		if(select.equals("allOrder")) {
			 hql="from Order_ViewMo where cust_id=? order by order_id desc";
		}
		
		if(select.equals("noPayOrder")) {
			 hql="from Order_ViewMo where cust_id=? and order_state='未支付' order by order_id desc";
		}
		
		if(select.equals("noSendOrder")) {
			 hql="from Order_ViewMo where cust_id=? and order_state='已支付' and is_send=0 order by order_id desc";
		}
		

		if(select.equals("noReceiveOrder")) {
			 hql="from Order_ViewMo where cust_id=? and order_state='已支付' and is_receive=0 order by order_id desc";
		}
		
		if(select.equals("noCommentOrder")) {
			 hql="from Order_ViewMo where cust_id=? and order_state='已支付' and is_send=0  and is_receive=0 and is_comment=0 order by order_id desc";
		}
		
		orderInfoList=this.getHibernateTemplate().find(hql, cust_id);
		
		return orderInfoList;
	}

	
	public List<Order_Commodity_ViewMo> OrderCommodity(int order_id) {
		String hql="from Order_Commodity_ViewMo where order_id=?";
		return this.getHibernateTemplate().find(hql, order_id) ;
	}

	
	public Order_Details_ViewMo GetOrderDetails(int order_id) {
		return this.getHibernateTemplate().get(Order_Details_ViewMo.class, order_id);
	}

	
	
	
	
	

}
