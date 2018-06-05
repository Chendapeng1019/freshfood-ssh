package action.ajax;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import mo.AreasMo;
import mo.CitiesMo;
import service.UserService;

public class GetCityAreaAction extends ActionSupport {

	private UserService userService;
	List<AreasMo> areasList = new ArrayList<AreasMo>();
	List<CitiesMo> citiesList = new ArrayList<CitiesMo>();
	private String provinceid;
	private String cityid;

	public String getCity() throws Exception {
		citiesList = userService.GetCity(provinceid);

		return SUCCESS;
	}

	public String getArea() throws Exception {
		areasList = userService.GetArea(cityid);
		for(AreasMo areasMo:areasList) {
			System.out.println(areasMo);
		}
		return SUCCESS;
	}
	
	public List<AreasMo> getAreasList() {
		return areasList;
	}

	public List<CitiesMo> getCitiesList() {
		return citiesList;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setProvinceid(String provinceid) {
		this.provinceid = provinceid;
	}

	public void setCityid(String cityid) {
		this.cityid = cityid;
	}

	

}
