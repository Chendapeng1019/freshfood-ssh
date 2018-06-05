package action.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.ShopCar_ViewMo;
import mo.UserMo;
import service.CartItemService;
import service.UserService;

public class MyShoppingCarAction extends ActionSupport implements ServletRequestAware {

	private CartItemService cartItemService;
	private UserService userService;
	private HttpServletRequest request;
	private List<ShopCar_ViewMo> shopcarList = new ArrayList<ShopCar_ViewMo>();

	public String myShoppingCar() throws Exception {
		HttpSession session = request.getSession();
		UserMo userMo = (UserMo) session.getAttribute("loginer");
		if (userMo == null) {
			return ERROR;
		}
		int shoppingnumber = userService.getShoppingNumber(userMo.getCust_id());
		session.setAttribute("shoppingnumber", shoppingnumber);
		shopcarList = cartItemService.getMyShoppingCar(userMo.getCust_id());
		return SUCCESS;
	}

	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	public List<ShopCar_ViewMo> getShopcarList() {
		return shopcarList;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	

}
