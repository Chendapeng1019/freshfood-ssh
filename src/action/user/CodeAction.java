package action.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.Action;

import cn.dsna.util.images.ValidateCode;

public class CodeAction implements Action, ServletResponseAware {

	private HttpServletResponse response;

	public String codeLogin() throws IOException {

		// TODO 自动生成的方法存根
		// 告诉客户端不缓存
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setHeader("expires", "0");

		ValidateCode vc = new ValidateCode(140, 42, 4, 20);
		// 向session中保存验证码
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("login_code", vc.getCode());
		vc.write(response.getOutputStream());
		return null;
	}

	public String codeRegister() throws IOException {

		// TODO 自动生成的方法存根
		// 告诉客户端不缓存
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setHeader("expires", "0");

		ValidateCode vc = new ValidateCode(140, 42, 4, 20);
		// 向session中保存验证码
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("register_code", vc.getCode());
		vc.write(response.getOutputStream());
		return null;
	}

	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
