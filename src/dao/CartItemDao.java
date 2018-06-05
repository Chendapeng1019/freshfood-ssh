package dao;

import java.util.List;

import mo.JieSuan_ViewMo;
import mo.OrderMo;
import mo.OrderdetailsMo;
import mo.ShopCar_ViewMo;
import mo.ShoppingCarMo;

public interface CartItemDao {

	public ShoppingCarMo CheckShopCar(int comm_id, int cust_id);

	public List<ShopCar_ViewMo> getMyShoppingCar(int cust_id);

	public void AddShopCar(ShoppingCarMo shoppingCarMo);

	public void UpdateShopCar(ShoppingCarMo carMo);
	
	public ShopCar_ViewMo JoinSucceed(int comm_id, int cust_id, int number);

	public ShoppingCarMo getShoppingCar(int cust_id, int comm_id);
	
	public int ChangNumber(ShoppingCarMo shoppingCarMo, int comm_number);

	public int DeleteShopCar(ShoppingCarMo shoppingCarMo);

	public OrderMo AddOrder(OrderMo orderMo);

	public void AddOrderDetails(ShoppingCarMo shoppingCarMo, int order_id);

	public List<JieSuan_ViewMo> GetOrderList(int order_id);

	public List<OrderdetailsMo> GetOrderDetailsList(int order_id);

}
