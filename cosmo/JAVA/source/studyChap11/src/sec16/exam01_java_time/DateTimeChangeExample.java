package sec16.exam01_java_time;

import java.time.LocalDateTime;
import java.time.temporal.TemporalAdjusters;

public class DateTimeChangeExample {
	public static void main(String[] args) {
		LocalDateTime now = LocalDateTime.now();
		System.out.println("����: "+now);
		
		LocalDateTime targetDateTime = null;
		//��������
		targetDateTime = now
				.withYear(2022)
				.withMonth(04)
				.withDayOfMonth(8)
				.withHour(13)
				.withMinute(47)
				.withSecond(20);
		System.out.println("���� ����: " + targetDateTime);
		
		//��
		targetDateTime = now.with(TemporalAdjusters.firstDayOfMonth());
		System.out.println("�̹����� ù ��: "+ targetDateTime);
		targetDateTime = now.with(TemporalAdjusters.lastDayOfMonth());
		System.out.println("�̹����� ������ ��: "+ targetDateTime.toString().substring(0, 10).replace("-", ""));
	}

}
