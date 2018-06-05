package action.ajax;

import com.opensymphony.xwork2.ActionSupport;

import service.UserService;

public class ReceiveAddAction extends ActionSupport {

	private UserService userService;
	private int rece_id;
	private int rece_ID;

	public String setMoRen() throws Exception {
		userService.SetMoRen(rece_id);
		return SUCCESS;
	}

	public String deleteReceiveInfo() throws Exception {
		userService.DeleteReceiveInfo(rece_ID);
		return SUCCESS;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setRece_id(int rece_id) {
		this.rece_id = rece_id;
	}

	public void setRece_ID(int rece_ID) {
		this.rece_ID = rece_ID;
	}

}
