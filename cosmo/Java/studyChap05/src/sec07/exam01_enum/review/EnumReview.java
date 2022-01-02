package sec07.exam01_enum.review;

import java.util.Calendar;

import sec07.exam01_enum.Week;

public class EnumReview {
	public static void main(String[] args) {
		
		Week today = null;
		Calendar cal = Calendar.getInstance();
		int week = cal.get(Calendar.DAY_OF_WEEK);//일(1)~토(7)
		
		switch(week) {
			case 1:
				today = Week.SUNDAY;
				break;
			case 2:
				today = Week.TUESDAY;
				break;
			case 3:
				today = Week.WEDNESDAY;
				break;
			case 4:
				today = Week.THURSDAY;
				break;
			case 5:
				today = Week.FRIDAY;
				break;
			case 6:
				today = Week.SATURDAY;
				break;
			case 7:
				today = Week.SUNDAY;
				break;
		}
		if(today==Week.SUNDAY) {
			System.out.println("오늘은 쉬는날");
		}else {
			System.out.println("공부를 하자");
		}
		
		
		
	}

}
