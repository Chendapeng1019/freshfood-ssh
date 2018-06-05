package action.ajax;

import com.opensymphony.xwork2.ActionSupport;

import service.UserService;

public class Login_RegisterAjax extends ActionSupport {
   
	private String loginphone;
	private String registerphone;
	
	private int logininfo;
	private int registerinfo;
	
	private UserService log_reg_ajax;
	
	public void setLog_reg_ajax(UserService log_reg_ajax) {
		this.log_reg_ajax = log_reg_ajax;
	}

	public String login_ajax() throws Exception{
		System.out.println(loginphone);
		
		logininfo=log_reg_ajax.CheckUser(loginphone);
		return SUCCESS;
	}
	
	public String register_ajax() throws Exception{
		System.out.println(registerphone);
		registerinfo=log_reg_ajax.CheckUser(registerphone);
		return SUCCESS;
	}
	
	public int getLogininfo() {
		return logininfo;
	}
	public int getRegisterinfo() {
		return registerinfo;
	}
	public void setLoginphone(String loginphone) {
		this.loginphone = loginphone;
	}
	public void setRegisterphone(String registerphone) {
		this.registerphone = registerphone;
	}

}
