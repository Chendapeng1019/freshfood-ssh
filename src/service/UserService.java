package service;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.transaction.annotation.Transactional;

import dao.CartItemDao;
import dao.CommodityDao;
import dao.UserDao;
import mo.AreasMo;
import mo.CitiesMo;
import mo.CommodityMo;
import mo.OrderMo;
import mo.Order_Commodity_ViewMo;
import mo.Order_Details_ViewMo;
import mo.Order_ViewMo;
import mo.OrderdetailsMo;
import mo.ProvincesMo;
import mo.Receive_InfoMo;
import mo.ShoppingCarMo;
import mo.ShoppingNumberMo;
import mo.ShouHuoInfo_ViewMo;
import mo.UserMo;

@Transactional
public class UserService {

	public UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
   
	public CartItemDao cartItemDao;
	
	public void setCartItemDao(CartItemDao cartItemDao) {
		this.cartItemDao = cartItemDao;
	}
	
	public CommodityDao commodityDao;
	

	public void setCommodityDao(CommodityDao commodityDao) {
		this.commodityDao = commodityDao;
	}

	// 检查用户是否存在
	public int CheckUser(String cust_phone) {
		return userDao.CheckUser(cust_phone);
	}

	// 检验密码是否正确
	public int CheckPassword(String cust_phone, String cust_password) {

		return userDao.CheckPassword(cust_phone, cust_password);
	}

	// 获取用户信息
	public UserMo getUser(String cust_phone) {

		return userDao.getUser(cust_phone);
	}

	public void addUser(UserMo userMo) {

		userDao.addUser(userMo);
	}

	public String login(UserMo uMo) {

		int flag1;
		flag1 = userDao.CheckUser(uMo.getCust_phone());
		if (flag1 == 0) {

			return "UserIsNotExist";
		}

		flag1 = userDao.CheckPassword(uMo.getCust_phone(), uMo.getCust_password());
		if (flag1 == 0) {

			return "PasswordError";
		}

		return "success";
	}

	public int getShoppingNumber(int cust_id) {
		return userDao.getShoppingNumber(cust_id);
	}

	public void reg(String account, String password) {
		userDao.reg(account, password);

	}

	public List<Receive_InfoMo> GetUserAddList(int cust_id) {

		return userDao.GetUserAddList(cust_id);
	}

	public List<ProvincesMo> GetProvinces() {

		return userDao.GetProvinces();
	}

	public List<CitiesMo> GetCity(String provinceid) {

		return userDao.GetCity(provinceid);
	}

	public List<AreasMo> GetArea(String cityid) {

		return userDao.GetArea(cityid);
	}

	public int UpdateOrder(OrderMo orderMo) {

		return userDao.UpdateOrder(orderMo);
	}

	public OrderMo GetOrder(int order_id) {

		return userDao.GetOrder(order_id);
	}

	public void SetMoRen(int rece_id) {
		Receive_InfoMo receive_InfoMo = userDao.getReceive_InfoMo(rece_id);
		userDao.setMoRen0(receive_InfoMo.getCust_id());
		userDao.setMoRen1(receive_InfoMo);

	}

	public void DeleteReceiveInfo(int rece_ID) {

		userDao.DeleteReceiveInfo(rece_ID);
	}

	public void AddReceive(Receive_InfoMo receive_InfoMo, String sheng, String shi, String xianqu) {
		ProvincesMo provincesMo=userDao.GetProvinceById(sheng);
		CitiesMo citiesMo=userDao.GetCityById(shi);
		AreasMo areasMo=userDao.GetAreaById(xianqu);
		receive_InfoMo.setShengfen(provincesMo.getProvince());
		receive_InfoMo.setShi(citiesMo.getCity());
		receive_InfoMo.setXianqu(areasMo.getArea());
		userDao.AddReceive(receive_InfoMo);
	}

	public ShouHuoInfo_ViewMo Pay(int order_id, String pay_no, int cust_id) {
		OrderMo orderMo=userDao.GetOrder(order_id);
		orderMo.setOrder_state("已支付");
		orderMo.setPay_no(pay_no);
		orderMo.setIs_send(0);
		orderMo.setIs_receive(0);
		orderMo.setPaymoney_time(new Timestamp(new Date().getTime()));
		userDao.UpdateOrder(orderMo);
		List<OrderdetailsMo> orderdetailsList=cartItemDao.GetOrderDetailsList(order_id);
		for(OrderdetailsMo list:orderdetailsList) {
			ShoppingCarMo shoppingCarMo=new ShoppingCarMo();
			shoppingCarMo=cartItemDao.getShoppingCar(cust_id, list.getComm_id());
			cartItemDao.DeleteShopCar(shoppingCarMo);
			CommodityMo commodityMo=commodityDao.GetCommodity(list.getComm_id());
			commodityMo.setComm_number(commodityMo.getComm_number()-list.getComm_number());
			commodityMo.setSales_number(commodityMo.getSales_number()+list.getComm_number());
			commodityDao.UpdateCommodity(commodityMo);
		}
		return userDao.PaySuccess(order_id);
	}

	public void UpdateUserOrder(int cust_id) throws ParseException {
		List<OrderMo> orderMoList=userDao.GetUserOrder(cust_id); 
		for(OrderMo orderMo:orderMoList) {
			int order_id=orderMo.getOrder_id();
			String order_state=orderMo.getOrder_state();
			Timestamp  paymoney_time=orderMo.getPaymoney_time();
			int is_send=orderMo.getIs_send();
			int is_receive=orderMo.getIs_receive();
			SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date nowtime=null;
			Date Paying_time=null;
			
			nowtime=df.parse(df.format(new Date()).toString());
			
			if(order_state.equals("已支付")) {
				String Paymoney_time=df.format(paymoney_time);
				Paying_time=df.parse(Paymoney_time);
				
				long time_lag=nowtime.getTime()-Paying_time.getTime();
				long days=time_lag/(1000*60*60*24);
				//long hours=time_lag/(1000*60*60);
				long minutes=time_lag/(1000*60);
				
				if(is_send==0 && minutes>10&&days<3) {
					orderMo.setIs_send(1);
					userDao.UpdateOrder(orderMo);
				}
				
				if(is_receive==0 &&days>=3) {
					orderMo.setIs_send(1);
					orderMo.setIs_receive(1);
					userDao.UpdateOrder(orderMo);
				}
		    }			
		}
		
	}
	

	public List<Order_ViewMo> OrderInfo(int cust_id, String select) {
		List<Order_ViewMo> orderInfoList=userDao.OrderInfo(cust_id,select);
		for(Order_ViewMo order:orderInfoList) {
			List<Order_Commodity_ViewMo> orderCommodityList=userDao.OrderCommodity(order.getOrder_id());
			order.setCommodityList(orderCommodityList);
		}
		return orderInfoList;
	}

	public Order_Details_ViewMo GetOrderInfo(int order_id) {
		Order_Details_ViewMo orderDetailsMo=userDao.GetOrderDetails(order_id);
		List<Order_Commodity_ViewMo> orderCommodityList=userDao.OrderCommodity(orderDetailsMo.getOrder_id());
		orderDetailsMo.setCommodityList(orderCommodityList);
		return orderDetailsMo;
	}
	
	
	

}
