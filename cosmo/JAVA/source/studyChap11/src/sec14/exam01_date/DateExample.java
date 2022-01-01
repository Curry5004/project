package sec14.exam01_date;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateExample {
	public static void main(String[]args) {
		Date now = new Date();
		String strNow1 = now.toString();
		System.out.println(strNow1);
		
		//""내부의 값은 대소문자에 따라 아웃풋 값이 달라진다
		SimpleDateFormat  sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//위처럼 쓰는게 거의 국룰
//		SimpleDateFormat  sdf = new SimpleDateFormat("yyyy-mm-dd dd:mm:ss");
		String strNow2 = sdf.format(now);
		System.out.println(strNow2);
	}

}
