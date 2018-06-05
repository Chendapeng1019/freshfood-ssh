package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.UserMo;
import service.CartItemService;

public class ChangNumberAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private CartItemService cartItemService;
	private int comm_number;
	private int comm_id;
	private int flag;
	
	
	public String changNumber() throws Exception{
		HttpSession session=request.getSession();
		UserMo userMo=(UserMo) session.getAttribute("loginer");
		flag=cartItemService.ChangNumber(userMo.getCust_id(),comm_id,comm_number);
		return SUCCESS;
	}
	
	
	public int getFlag() {
		return flag;
	}



	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}



	public void setComm_number(int comm_number) {
		this.comm_number = comm_number;
	}



	public void setComm_id(int comm_id) {
		this.comm_id = comm_id;
	}



	public void setServletRequest(HttpServletRequest request) {
		
	  this.request=request;
	}
	

}
