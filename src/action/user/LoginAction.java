package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import mo.UserMo;
import service.UserService;

public class LoginAction extends ActionSupport implements ModelDriven<UserMo>, ServletRequestAware {

	private UserMo uMo = new UserMo();
	private String code;
	private String flag;

	private UserService loginService;
	private HttpServletRequest request;

	public String login() throws Exception {

		HttpSession session = request.getSession();
		String Code = (String) session.getAttribute("login_code");
		int shoppingnumber = 0;

		if (code == null || code.trim().equals("")) {
			this.flag = "CodeNull";
			return ERROR;
		}

		if (!code.equalsIgnoreCase(Code)) {
			this.flag = "CodeError";
			return ERROR;
		}

		flag = loginService.login(uMo);

		if (flag.equals("success")) {
			uMo = this.loginService.getUser(uMo.getCust_phone());
			shoppingnumber = this.loginService.getShoppingNumber(uMo.getCust_id());
			session.setAttribute("loginer", uMo);
			session.setAttribute("shoppingnumber", shoppingnumber);
			return SUCCESS;
		}

		return ERROR;

	}
	

	public void setLoginService(UserService loginService) {
		this.loginService = loginService;
	}

	public void setServletRequest(HttpServletRequest request) {

		this.request = request;
	}

	public UserMo getModel() {

		return uMo;
	}

	public UserMo getuMo() {
		return uMo;
	}

	public void setuMo(UserMo uMo) {
		this.uMo = uMo;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
