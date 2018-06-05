package action.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.Order_ViewMo;
import mo.UserMo;
import service.CartItemService;
import service.UserService;

public class AllOrderAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private UserService userService;
	private List<Order_ViewMo> allOrderInfo=new ArrayList<Order_ViewMo>();
	private List<Order_ViewMo> noPayOrderInfo=new ArrayList<Order_ViewMo>();
	private List<Order_ViewMo> noSendOrderInfo=new ArrayList<Order_ViewMo>();
	private List<Order_ViewMo> noReceiveOrderInfo=new ArrayList<Order_ViewMo>();
	private List<Order_ViewMo> noCommentOrderInfo=new ArrayList<Order_ViewMo>();
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}
	
	public String allOrder() throws Exception{
		
		HttpSession session=request.getSession();
		UserMo userMo=(UserMo) session.getAttribute("loginer");
		if(userMo==null) {
			return ERROR;
		}
		userService.UpdateUserOrder(userMo.getCust_id());
		allOrderInfo=userService.OrderInfo(userMo.getCust_id(),"allOrder");
		noPayOrderInfo=userService.OrderInfo(userMo.getCust_id(),"noPayOrder");
		noSendOrderInfo=userService.OrderInfo(userMo.getCust_id(),"noSendOrder");
		noReceiveOrderInfo=userService.OrderInfo(userMo.getCust_id(),"noReceiveOrder");
		noCommentOrderInfo=userService.OrderInfo(userMo.getCust_id(),"noCommentOrder");
		return SUCCESS;
	}

	
	
	public List<Order_ViewMo> getAllOrderInfo() {
		return allOrderInfo;
	}

	public List<Order_ViewMo> getNoPayOrderInfo() {
		return noPayOrderInfo;
	}

	public List<Order_ViewMo> getNoSendOrderInfo() {
		return noSendOrderInfo;
	}

	public List<Order_ViewMo> getNoReceiveOrderInfo() {
		return noReceiveOrderInfo;
	}

	public List<Order_ViewMo> getNoCommentOrderInfo() {
		return noCommentOrderInfo;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	

}
