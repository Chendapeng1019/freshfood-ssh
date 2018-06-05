package mo;

import java.sql.Timestamp;
import java.util.List;

public class OrderMo {

	private int order_id;
	private int cust_id;
	private String order_state;
	private String pay_method;
	private String pay_no;
	private Timestamp order_time;
	private int is_send;
	private Timestamp paymoney_time;
	private String return_repay;
	private Timestamp shenqing_time;
	private int is_receive;
	private String rece_name;
	private String rece_tel;
	private String rece_add;
    

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

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
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

	public String getReturn_repay() {
		return return_repay;
	}

	public void setReturn_repay(String return_repay) {
		this.return_repay = return_repay;
	}

	public Timestamp getShenqing_time() {
		return shenqing_time;
	}

	public void setShenqing_time(Timestamp shenqing_time) {
		this.shenqing_time = shenqing_time;
	}

	public int getIs_receive() {
		return is_receive;
	}

	public void setIs_receive(int is_receive) {
		this.is_receive = is_receive;
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
