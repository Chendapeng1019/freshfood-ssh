package dao;

import java.util.List;

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

public interface UserDao {

	int CheckUser(String cust_phone);

	int CheckPassword(String cust_phone, String cust_password);

	UserMo getUser(String cust_phone);

	int getShoppingNumber(int cust_id);

	void addUser(UserMo userMo);

	void reg(String account, String password);

	List<Receive_InfoMo> GetUserAddList(int cust_id);

	List<ProvincesMo> GetProvinces();

	List<CitiesMo> GetCity(String provinceid);

	List<AreasMo> GetArea(String cityid);

	int UpdateOrder(OrderMo orderMo);

	OrderMo GetOrder(int order_id);

	Receive_InfoMo getReceive_InfoMo(int rece_id);

	void setMoRen0(int cust_id);

	void setMoRen1(Receive_InfoMo receive_InfoMo);

	void DeleteReceiveInfo(int rece_ID);

	void AddReceive(Receive_InfoMo receive_InfoMo);

	ProvincesMo GetProvinceById(String sheng);

	CitiesMo GetCityById(String shi);

	AreasMo GetAreaById(String xianqu);

	ShouHuoInfo_ViewMo PaySuccess(int order_id);

	List<OrderMo> GetUserOrder(int cust_id);

	List<Order_ViewMo> OrderInfo(int cust_id, String select);

	List<Order_Commodity_ViewMo> OrderCommodity(int order_id);


	Order_Details_ViewMo GetOrderDetails(int order_id);
	
	

	

}
