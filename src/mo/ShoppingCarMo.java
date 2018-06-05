package mo;

import java.sql.Timestamp;


public class ShoppingCarMo {
	private int shop_id;
	private int cust_id;
	private int comm_id;
	private int comm_number;
	private double comm_price;
	private Timestamp join_time;
	public int getShop_id() {
		return shop_id;
	}

	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}

	public int getCust_id() {
		return cust_id;
	}

	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}

	public int getComm_id() {
		return comm_id;
	}

	public void setComm_id(int comm_id) {
		this.comm_id = comm_id;
	}

	public int getComm_number() {
		return comm_number;
	}

	public void setComm_number(int comm_number) {
		this.comm_number = comm_number;
	}

	public double getComm_price() {
		return comm_price;
	}

	public void setComm_price(double comm_price) {
		this.comm_price = comm_price;
	}

	public Timestamp getJoin_time() {
		return join_time;
	}

	public void setJoin_time(Timestamp date) {
		this.join_time = date;
	}

	

    
}
