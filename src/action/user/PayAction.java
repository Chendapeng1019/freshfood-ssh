package action.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.OrderdetailsMo;
import mo.ShouHuoInfo_ViewMo;
import mo.UserMo;
import service.CartItemService;
import service.UserService;

public class PayAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private UserService userService;
	private int out_trade_no;
	String pay_no="15079011662";
	private ShouHuoInfo_ViewMo paysuccess=new ShouHuoInfo_ViewMo();
	
	public String pay() throws Exception{
		HttpSession session=request.getSession();
		UserMo userMo=(UserMo) session.getAttribute("loginer");
		int order_id=out_trade_no;
		paysuccess=userService.Pay(order_id,pay_no,userMo.getCust_id()); 
		int shoppingnumber = userService.getShoppingNumber(userMo.getCust_id());
		session.setAttribute("shoppingnumber", shoppingnumber);
		return SUCCESS;
	}
	
	
	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;

	}



	public int getOut_trade_no() {
		return out_trade_no;
	}



	public void setOut_trade_no(int out_trade_no) {
		this.out_trade_no = out_trade_no;
	}



	public void setUserService(UserService userService) {
		this.userService = userService;
	}



	public ShouHuoInfo_ViewMo getPaysuccess() {
		return paysuccess;
	}
	
	
   
}
