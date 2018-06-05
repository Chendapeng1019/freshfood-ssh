package mo;

import java.sql.Timestamp;
import java.util.List;

public class Order_Details_ViewMo {
	private int order_id;
	private int cust_id;
	private String order_state;
	private Timestamp order_time;
	private int is_send;
	private Timestamp paymoney_time;
	private int is_receive;
	private double totalprice;
	private int is_comment;
	private String rece_name;
	private String rece_tel;
	private String rece_add;
	private List<Order_Commodity_ViewMo> commodityList;
	

	public List<Order_Commodity_ViewMo> getCommodityList() {
		return commodityList;
	}

	public void setCommodityList(List<Order_Commodity_ViewMo> commodityList) {
		this.commodityList = commodityList;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getCust_id() {
		return cust_id;
	}

	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}

	public String getOrder_state() {
		return order_state;
	}

	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}

	public Timestamp getOrder_time() {
		return order_time;
	}

	public void setOrder_time(Timestamp order_time) {
		this.order_time = order_time;
	}

	public int getIs_send() {
		return is_send;
	}

	public void setIs_send(int is_send) {
		this.is_send = is_send;
	}

	public Timestamp getPaymoney_time() {
		return paymoney_time;
	}

	public void setPaymoney_time(Timestamp paymoney_time) {
		this.paymoney_time = paymoney_time;
	}

	public int getIs_receive() {
		return is_receive;
	}

	public void setIs_receive(int is_receive) {
		this.is_receive = is_receive;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public int getIs_comment() {
		return is_comment;
	}

	public void setIs_comment(int is_comment) {
		this.is_comment = is_comment;
	}

	public String getRece_name() {
		return rece_name;
	}

	public void setRece_name(String rece_name) {
		this.rece_name = rece_name;
	}

	public String getRece_tel() {
		return rece_tel;
	}

	public void setRece_tel(String rece_tel) {
		this.rece_tel = rece_tel;
	}

	public String getRece_add() {
		return rece_add;
	}

	public void setRece_add(String rece_add) {
		this.rece_add = rece_add;
	}

}
