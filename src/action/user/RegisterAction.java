package action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import mo.UserMo;

import service.UserService;

public class RegisterAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private UserService registerService;
	private String username;
	private String userphone;
	private String verify_value;
	private String userpassword;
	private String repassword;
	private String flag;

	public String register() throws Exception {
		if (username == null || username.trim().equals("")) {
			flag = "UserNameIsNull";
			return ERROR;
		}

		if (userphone == null || userphone.trim().equals("")) {
			flag = "UserPhoneIsNull";
			return ERROR;
		}

		if (verify_value == null || verify_value.trim().equals("")) {
			flag = "CodeIsNull";
			return ERROR;
		}
		if (userpassword == null || userpassword.trim().equals("")) {
			flag = "UserPasswordIsNull";
			return ERROR;
		}

		if (repassword == null || repassword.trim().equals("")) {
			flag = "RePasswordIsNull";
			return ERROR;
		}

		HttpSession session = request.getSession();
		String Code = (String) session.getAttribute("register_code");

		if (!verify_value.equalsIgnoreCase(Code)) {
			flag = "CodeError";
			return ERROR;
		}

		if (!userpassword.equals(repassword)) {
			flag = "PasswordIsDifferent";
			return ERROR;
		}

		int flag1 = registerService.CheckUser(userphone);
		if (flag1 == 1) {
			flag = "UserIsExist";
			return ERROR;
		}

		UserMo userMo = new UserMo();
		userMo.setCust_name(username);
		userMo.setCust_phone(userphone);
		userMo.setCust_password(userpassword);
		registerService.addUser(userMo);
		flag = "RegisterOK";
		return SUCCESS;
	}

	public void setRegisterService(UserService registerService) {
		this.registerService = registerService;
	}

	public void setServletRequest(HttpServletRequest request) {

		this.request = request;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getVerify_value() {
		return verify_value;
	}

	public void setVerify_value(String verify_value) {
		this.verify_value = verify_value;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

}
