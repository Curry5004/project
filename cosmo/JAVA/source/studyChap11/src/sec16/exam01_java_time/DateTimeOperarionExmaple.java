package sec16.exam01_java_time;

import java.time.LocalDateTime;

public class DateTimeOperarionExmaple {
	public static void main(String[] args) {
		LocalDateTime now = LocalDateTime.now();
		
		LocalDateTime targetDateTtime = now.plusDays(100);
		//plusYears, minusMonths, plusHours... ����� �ִ�
		System.out.println("������: "+targetDateTtime);
		
	}

}
