package action.user;

import com.opensymphony.xwork2.ActionSupport;

import mo.Order_Details_ViewMo;
import mo.Order_ViewMo;
import service.UserService;

public class OrderInfoAction extends ActionSupport {
  
	private UserService userService;
	private int order_id;
	private Order_Details_ViewMo orderInfo=new Order_Details_ViewMo();
	
	public String orderInfo() throws Exception{
		orderInfo=userService.GetOrderInfo(order_id);
		return SUCCESS;
	}

	

	public Order_Details_ViewMo getOrderInfo() {
		return orderInfo;
	}



	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	
	
}
