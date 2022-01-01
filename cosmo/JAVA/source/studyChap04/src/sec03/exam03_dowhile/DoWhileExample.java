package sec03.exam03_dowhile;
//스케너, 인풋 뭐지.. 개념이 모르니까 어렵내
import java.util.Scanner;//단축기 컨트롤 쉬피트 o 누르면 바로 이거 뜸

public class DoWhileExample {
	public static void main(String[] args) {
		System.out.println("메시지를 입력하세요");
		System.out.println("프로그램을 종료하려면 q를 입력하세요");
		
		Scanner scanner = new Scanner(System.in);//18장때 나옴 입출력할때 다시 다룰 예정임
		String inputString;
		
		do {
			System.out.print(">");
			inputString = scanner.nextLine();
			System.out.println(inputString);
		} while (! inputString.equals("q"));
		System.out.println();
		System.out.println("프로그램 종료");
	}

}
