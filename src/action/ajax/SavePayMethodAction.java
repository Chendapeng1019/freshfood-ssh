package action.ajax;

import com.opensymphony.xwork2.ActionSupport;

import mo.OrderMo;
import service.UserService;

public class SavePayMethodAction extends ActionSupport {
   
	private UserService userService;
	private int order_id;
	private String paymethod;
	private int flag;
	public String savePayMethod() throws Exception{
		OrderMo orderMo=userService.GetOrder(order_id);
		orderMo.setPay_method(paymethod);
		flag=userService.UpdateOrder(orderMo);
		return SUCCESS;
	}
	
	public int getFlag() {
		return flag;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	
	
}
