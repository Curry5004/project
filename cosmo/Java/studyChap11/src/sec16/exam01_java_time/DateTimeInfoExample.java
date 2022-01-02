package sec16.exam01_java_time;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class DateTimeInfoExample {
	public static void main(String[]args){
		LocalDateTime now = LocalDateTime.now();
		System.out.println(now);
		
		LocalDate nowDate = now.toLocalDate();
		if(nowDate.isLeapYear()) {
			System.out.println("올해 윤년:2월은 29일까지 있습니다.");
		} else {
			System.out.println("올해는 평년: 2월 28일까지 있습니다.");
		}
	}

}
