package sec14.exam01_date;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateExample {
	public static void main(String[]args) {
		Date now = new Date();
		String strNow1 = now.toString();
		System.out.println(strNow1);
		
		//""������ ���� ��ҹ��ڿ� ���� �ƿ�ǲ ���� �޶�����
		SimpleDateFormat  sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//��ó�� ���°� ���� ����
//		SimpleDateFormat  sdf = new SimpleDateFormat("yyyy-mm-dd dd:mm:ss");
		String strNow2 = sdf.format(now);
		System.out.println(strNow2);
	}

}
