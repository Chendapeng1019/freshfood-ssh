package mo;

import java.math.BigDecimal;

public class ShoppingNumberMo {
  
    private int cust_id;
    private BigDecimal shoppingnumber;
    
    
   

	public BigDecimal getShoppingnumber() {
		return shoppingnumber;
	}

	public void setShoppingnumber(BigDecimal shoppingnumber) {
		this.shoppingnumber = shoppingnumber;
	}

	@Override
	public String toString() {
		return "ShoppingNumberMo [cust_id=" + cust_id + ", shoppingnumber=" + shoppingnumber + "]";
	}

	public int getCust_id() {
		return cust_id;
	}

	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}

   
}
