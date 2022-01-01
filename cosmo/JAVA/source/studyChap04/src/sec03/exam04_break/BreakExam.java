package sec03.exam04_break;

public class BreakExam {
	public static void main(String[] args) {
		while(true) {
			int num = (int)(Math.random()*6+1); //1-6까지 랜덤한 수
			System.out.println(num);
			if(num==6) {
				break;
				//6이 나올때 까지 수를 뱉어내다가 6 나오면 종료
			}
		}
		System.out.println("프로그램 종료");
	}

}
