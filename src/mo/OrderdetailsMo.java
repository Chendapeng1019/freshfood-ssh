package mo;

public class OrderdetailsMo {

	private int orderdetails_id;
	private int comm_id;
	private int order_id;
	private int comm_number;
	private double comm_price;
	private int is_comment;

	public int getOrderdetails_id() {
		return orderdetails_id;
	}

	public void setOrderdetails_id(int orderdetails_id) {
		this.orderdetails_id = orderdetails_id;
	}

	public int getComm_id() {
		return comm_id;
	}

	public void setComm_id(int comm_id) {
		this.comm_id = comm_id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
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

	public int getIs_comment() {
		return is_comment;
	}

	public void setIs_comment(int is_comment) {
		this.is_comment = is_comment;
	}

}
