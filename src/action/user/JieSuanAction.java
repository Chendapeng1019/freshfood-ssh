package action.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.JieSuan_ViewMo;
import mo.ProvincesMo;
import mo.Receive_InfoMo;
import mo.UserMo;
import service.CartItemService;
import service.UserService;

public class JieSuanAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private UserService userService;
	private CartItemService cartItemService;
	private int order_id;
	private List<JieSuan_ViewMo> orderList=new ArrayList<JieSuan_ViewMo>();
	private List<Receive_InfoMo> userAddsList=new ArrayList<Receive_InfoMo>();
	private List<ProvincesMo> provincesList=new ArrayList<ProvincesMo>(); 
	private double  totalprice=0;
	
	public String jieSuan() throws Exception{
		
		HttpSession session=request.getSession();
		UserMo userMo=(UserMo) session.getAttribute("loginer");
		if(userMo==null) {
			return ERROR;
		}
		orderList=cartItemService.GetOrderList(order_id);
		userAddsList=userService.GetUserAddList(userMo.getCust_id());
		provincesList=userService.GetProvinces();
		totalprice=cartItemService.CountTotalPrice(orderList);
		return SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		
      this.request=request;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public List<JieSuan_ViewMo> getOrderList() {
		return orderList;
	}

	public List<Receive_InfoMo> getUserAddsList() {
		return userAddsList;
	}

	
	public List<ProvincesMo> getProvincesList() {
		return provincesList;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}
	
   
	
}
