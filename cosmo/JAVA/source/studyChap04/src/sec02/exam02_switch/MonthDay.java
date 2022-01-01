package sec02.exam02_switch;

public class MonthDay {
	public static void main(String[] args) {
		int month = 10;
		int day = 0;
		
		switch(month) {
			case 1: case 3: case 5: case 7: case 8: case 10: case 12:
				day = 31;
				break;
			case 4: case 6: case 9: case 11:
				day = 30;
				break;
			case 2:
				day = 28;
				break;
				//만약 이걸 if로 하면 if문으로 각각 줄줄 써줘야 하는데 이건 같은 카테고리로 묶어서 진행하니 훨씬 코드가 심플하다
		}
		System.out.println(month +"월은 " + day + "일 까지있습니다");
	}

}
