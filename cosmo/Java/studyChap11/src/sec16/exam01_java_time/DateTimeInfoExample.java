package sec16.exam01_java_time;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class DateTimeInfoExample {
	public static void main(String[]args){
		LocalDateTime now = LocalDateTime.now();
		System.out.println(now);
		
		LocalDate nowDate = now.toLocalDate();
		if(nowDate.isLeapYear()) {
			System.out.println("���� ����:2���� 29�ϱ��� �ֽ��ϴ�.");
		} else {
			System.out.println("���ش� ���: 2�� 28�ϱ��� �ֽ��ϴ�.");
		}
	}

}
