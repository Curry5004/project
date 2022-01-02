package sec06.exam04_main_argument;

public class MainStringArrayArgument {
	public static void main(String[] args) {
//		System.out.println("Argument Count : " + args.length); 
		if(args.length != 2) {
			System.out.println("프로그램의 사용법");
			System.out.println("C:\\JavaProgramming\\source\\studyChap05\\bin");
			System.out.println("java sec06.exam04_marin_argument.MainStringArrayArgument num1 num2");
			System.exit(0);
		}
		String strNum1 = args[0]; //ex. 10
		String strNum2 = args[1]; //ex. 20
		
		int num1 = Integer.parseInt(strNum1);//스트링 타입의 변술ㄹ int 로 바꿀따 Integer.parseInt(strNum1) 이 키워드를 정말 많이 씀. integer의 래퍼 클래스		
		int num2 = Integer.parseInt(strNum2);
		int result = num1 + num2; //ex 10+20
		
		System.out.println(num1 + " + " + num2 + " = "+result);
	}

}
