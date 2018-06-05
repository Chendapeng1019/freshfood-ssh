package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.UserMo;
import service.CartItemService;

public class DeleteShopCarAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private CartItemService cartItemService;
	private int comm_id;
    private int flag;
	public String deleteShopCar() {
        flag=0;
        HttpSession session=request.getSession();
        UserMo userMo=(UserMo) session.getAttribute("loginer");
        flag=cartItemService.DeleteShopCar(userMo.getCust_id(),comm_id);
		return SUCCESS;
	}

	public void setServletRequest(HttpServletRequest request) {

		this.request = request;
	}

	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}

	public void setComm_id(int comm_id) {
		this.comm_id = comm_id;
	}

	public int getFlag() {
		return flag;
	}
	
}
