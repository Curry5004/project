package sec16.exam01_java_time;

import java.time.LocalDateTime;
import java.time.temporal.TemporalAdjusters;

public class DateTimeChangeExample {
	public static void main(String[] args) {
		LocalDateTime now = LocalDateTime.now();
		System.out.println("현재: "+now);
		
		LocalDateTime targetDateTime = null;
		//직접변경
		targetDateTime = now
				.withYear(2022)
				.withMonth(04)
				.withDayOfMonth(8)
				.withHour(13)
				.withMinute(47)
				.withSecond(20);
		System.out.println("직접 변경: " + targetDateTime);
		
		//월
		targetDateTime = now.with(TemporalAdjusters.firstDayOfMonth());
		System.out.println("이번달의 첫 일: "+ targetDateTime);
		targetDateTime = now.with(TemporalAdjusters.lastDayOfMonth());
		System.out.println("이번달의 마지막 일: "+ targetDateTime.toString().substring(0, 10).replace("-", ""));
	}

}
