package action.user;

import com.opensymphony.xwork2.ActionSupport;

import mo.Receive_InfoMo;
import service.UserService;

public class AddReceiveAction extends ActionSupport {

	private UserService userService;
	private int order_id;
	private int cust_id;
	private String receiveName;
	private String receiveTel;
	private String sheng;
	private String shi;
	private String xianqu;
	private String add;

	public String addReceive() throws Exception {
		Receive_InfoMo receive_InfoMo = new Receive_InfoMo();
		receive_InfoMo.setCust_id(cust_id);
		receive_InfoMo.setRece_name(receiveName);
		receive_InfoMo.setRece_tel(receiveTel);
		receive_InfoMo.setRece_add(add);
		userService.AddReceive(receive_InfoMo,sheng,shi,xianqu);
		return SUCCESS;

	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}

	
	public void setReceiveTel(String receiveTel) {
		this.receiveTel = receiveTel;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}

	public void setSheng(String sheng) {
		this.sheng = sheng;
	}

	public void setShi(String shi) {
		this.shi = shi;
	}

	public void setXianqu(String xianqu) {
		this.xianqu = xianqu;
	}

	public void setAdd(String add) {
		this.add = add;
	}

}
