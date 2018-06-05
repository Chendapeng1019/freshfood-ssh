package mo;

import java.sql.Date;

public class Activity_ViewMo {
	
	 

	  private int comm_id;
	  private String commodity_name;
	  private double activityfood_price;
	  private double comm_price;
	  private String image1;
	  private Date activity_time;
	  
    public int getComm_id() {
		return comm_id;
	}
	public void setComm_id(int comm_id) {
		this.comm_id = comm_id;
	}
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public double getActivityfood_price() {
		return activityfood_price;
	}
	public void setActivityfood_price(double activityfood_price) {
		this.activityfood_price = activityfood_price;
	}
	public double getComm_price() {
		return comm_price;
	}
	public void setComm_price(double comm_price) {
		this.comm_price = comm_price;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public Date getActivity_time() {
		return activity_time;
	}
	public void setActivity_time(Date activity_time) {
		this.activity_time = activity_time;
	}

}
