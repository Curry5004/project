package sec02.exam02_switch.review;

public class SwitchExampleReview {
	public static void main(String[] args) {
		int num = (int)(Math.random()*6+1);
		
		// switch 예시
		switch(num){
			case 1:
				System.out.println("1번입니다");
				break;
			case 2:
				System.out.println("2번입니다");
				break;
			case 3:
				System.out.println("3번입니다"); 
				break;
			case 4:
				System.out.println("4번입니다");
				break;
			case 5:
				System.out.println("5번입니다");
				break;
			default:
				System.out.println("6번입니다");
				break;
		}
		
		// switch에서 break가 없을때
		int num1 = (int)(Math.random()*10+6);
		
		switch(num1) {
			case 6:
				System.out.println("아침");
			case 7:
				System.out.println("점심");
			case 8:
				System.out.println("저녁");
			case 9:
				System.out.println("야식");
			default:
				System.out.println("야참");

		
		}
		
		//char에서 사용가는한 switch
		char grade = '가';
		
		switch(grade) {
			case 'A' : case 'a':
				System.out.println("우수회원입니다");
				break;
			case 'B' : case 'b':
				System.out.println("일반회원입니다");
				break;
			default :
				System.out.println("손님입니다");
				break;
			}
		
		//string 타입의 변수를 사용 할 수 있는 겨웅
		
		String position = "사장";
		
		switch(position){
			case "사장" :
				System.out.println("700만원입니다");
				break;
			case "과장":
				System.out.println("500만원 입니다");
				
			}
		}
	
				
	}


