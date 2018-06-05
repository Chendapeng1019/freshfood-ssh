package action.ajax;

import com.opensymphony.xwork2.ActionSupport;

import mo.OrderMo;
import service.UserService;

public class SaveReceiveInfoAction extends ActionSupport {
   
	private UserService userService;
	private int order_id;
	private String rece_name;
	private String rece_tel;
	private String rece_add;
	private int flag;
	
	public String saveReceiveInfo() throws Exception{
		flag=0;
		OrderMo orderMo=userService.GetOrder(order_id);//先查询后查找
		orderMo.setRece_name(rece_name);
		orderMo.setRece_tel(rece_tel);
		orderMo.setRece_add(rece_add);
		flag=userService.UpdateOrder(orderMo);
		return SUCCESS;
	}

	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public void setRece_name(String rece_name) {
		this.rece_name = rece_name;
	}

	public void setRece_tel(String rece_tel) {
		this.rece_tel = rece_tel;
	}

	public void setRece_add(String rece_add) {
		this.rece_add = rece_add;
	}

	public int getFlag() {
		return flag;
	}
	
	
	
}
