package action.commodity;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.ShopCar_ViewMo;
import mo.UserMo;
import service.CartItemService;

public class JoinShopCarAction extends ActionSupport implements ServletRequestAware {

	private CartItemService cartItemService;
	private HttpServletRequest request;
	private int comm_id;
	private int number;
	private double comm_price;
	private ShopCar_ViewMo carMo = new ShopCar_ViewMo();

	public String joinShopCar() throws Exception {
		HttpSession session = request.getSession();
		UserMo userMo = (UserMo) session.getAttribute("loginer");

		if (userMo == null) {
			return ERROR;
		}

		 cartItemService.JoinShopCar(comm_id, comm_price,userMo.getCust_id(), number);
		 carMo=cartItemService.JoinShopCarSuccess(comm_id,userMo.getCust_id(),number);
		int shoppingnumber = (int) session.getAttribute("shoppingnumber");
		shoppingnumber = shoppingnumber + number;
		session.setAttribute("shoppingnumber", shoppingnumber);

		return SUCCESS;
	}

	
	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public int getComm_id() {
		return comm_id;
	}

	public void setComm_id(int comm_id) {
		this.comm_id = comm_id;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	

	public ShopCar_ViewMo getCarMo() {
		return carMo;
	}

	public void setComm_price(double comm_price) {
		this.comm_price = comm_price;
	}
	
}
