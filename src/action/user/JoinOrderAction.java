package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.OrderMo;
import mo.UserMo;
import service.CartItemService;

public class JoinOrderAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private CartItemService cartItemService;
	private int[] comm_id;
	private int order_id;

	
	public String joinOrder() throws Exception{
		HttpSession session=request.getSession();
		UserMo userMo=(UserMo) session.getAttribute("loginer");
		if(userMo==null) {
			return ERROR;
		}
	   OrderMo orderMo=new OrderMo();
	   orderMo=cartItemService.JoinOrder(userMo.getCust_id());
	   System.out.println("order_id="+orderMo.getOrder_id());
	   order_id=orderMo.getOrder_id();
	   cartItemService.JoinOrderDetails(userMo.getCust_id(),order_id,comm_id);
	   
		return SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {

		this.request = request;
	}

	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}

	public void setComm_id(int[] comm_id) {
		this.comm_id = comm_id;
	}

	public int getOrder_id() {
		return order_id;
	}
    
	
}
