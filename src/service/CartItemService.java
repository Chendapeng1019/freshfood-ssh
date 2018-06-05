package service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import dao.CartItemDao;
import dao.UserDao;
import mo.JieSuan_ViewMo;
import mo.OrderMo;
import mo.ShopCar_ViewMo;
import mo.ShoppingCarMo;

@Transactional
public class CartItemService {

	private CartItemDao cartItemDao;

	public void setCartItemDao(CartItemDao cartItemDao) {
		this.cartItemDao = cartItemDao;
	}
 


	
	public void JoinShopCar(int comm_id, double comm_price, int cust_id, int number) {
		ShoppingCarMo carMo = cartItemDao.CheckShopCar(comm_id, cust_id);
		if (carMo == null) {
			carMo= new ShoppingCarMo();
			carMo.setComm_id(comm_id);
			carMo.setComm_price(comm_price);
			carMo.setCust_id(cust_id);
			carMo.setComm_number(number);
			carMo.setJoin_time(new Timestamp(new Date().getTime()));
			cartItemDao.AddShopCar(carMo);

		} else {
			System.out.println("comm_number1=" + carMo.getComm_number());
			int comm_number = carMo.getComm_number() + number;
			carMo.setComm_number(comm_number);
			System.out.println("comm_number2=" + carMo.getComm_number());
			cartItemDao.UpdateShopCar(carMo);
		}
		
	}
	
	
	public List<ShopCar_ViewMo> getMyShoppingCar(int cust_id) {

		return cartItemDao.getMyShoppingCar(cust_id);
	}

	public ShopCar_ViewMo JoinShopCarSuccess(int comm_id, int cust_id, int number) {
		
		return cartItemDao.JoinSucceed(comm_id, cust_id,number);
	}

	public int ChangNumber(int cust_id, int comm_id, int comm_number) {
		ShoppingCarMo shoppingCarMo=new ShoppingCarMo();
		shoppingCarMo=cartItemDao.getShoppingCar(cust_id,comm_id);
		return cartItemDao.ChangNumber(shoppingCarMo,comm_number);
	}

	public int DeleteShopCar(int cust_id, int comm_id) {
		ShoppingCarMo shoppingCarMo=new ShoppingCarMo();
		shoppingCarMo=cartItemDao.getShoppingCar(cust_id,comm_id);		
		return cartItemDao.DeleteShopCar(shoppingCarMo);
	}

	public OrderMo JoinOrder(int cust_id) {
		OrderMo orderMo=new OrderMo();
		orderMo.setCust_id(cust_id);
		orderMo.setOrder_state("未支付");
		orderMo.setOrder_time(new Timestamp(new Date().getTime()));
		return cartItemDao.AddOrder(orderMo);
	}




	public void JoinOrderDetails(int cust_id, int order_id, int[] comm_id) {
		for(int i=0;i<comm_id.length;i++) {
			ShoppingCarMo shoppingCarMo=cartItemDao.getShoppingCar(cust_id, comm_id[i]);
			cartItemDao.AddOrderDetails(shoppingCarMo,order_id);
		}
		
	}




	public List<JieSuan_ViewMo> GetOrderList(int order_id) {
		
		return cartItemDao.GetOrderList(order_id);
	}




	public double CountTotalPrice(List<JieSuan_ViewMo> orderList) {
		double totalprice=0;
		for(JieSuan_ViewMo list:orderList) {
			totalprice=totalprice+list.getSum_price();
		}
		return totalprice;
	}






}
