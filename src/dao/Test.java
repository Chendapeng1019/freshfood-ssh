package dao;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import mo.UserMo;

public class Test {
	
	public void setUsr(UserMo uMo) {
		uMo=new UserMo();
		uMo.setCust_id(324324234);
	}
	public static void main(String af[]) {
		/*Test test=new Test();
		UserMo uu=new UserMo();
		uu.setCust_id(123);
		//System.out.println(uu.hashCode());
		System.out.println(uu.getCust_id());
		test.setUsr(uu);
		System.out.println(uu.getCust_id());
		//System.out.println(uu.hashCode());
*/		
		Test test=new Test();
		test.demo8();
		
	}
	
	public void demo8() {
		 
/*        SimpleDateFormat sdf = new SimpleDateFormat();// 格式化时间 
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss a");// a为am/pm的标记  
        Date date = new Date();// 获取当前时间 
        System.out.println("现在时间：" + sdf.format(date)); // 输出已经格式化的现在时间（24小时制）
        
*/
	/*	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		System.out.println(date);*/
		
		Timestamp time1 = new Timestamp(new Date().getTime());
	//	System.out.println(time);
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//Date Time1=new Date(time1.getTime());
		//System.out.println(Time1);
		
		String Time1=df.format(time1);
		System.out.println(Time1);
		
		
		
		
	}

}
