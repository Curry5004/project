package sec06.exam04_main_argument;

public class MainStringArrayArgument {
	public static void main(String[] args) {
//		System.out.println("Argument Count : " + args.length); 
		if(args.length != 2) {
			System.out.println("���α׷��� ����");
			System.out.println("C:\\JavaProgramming\\source\\studyChap05\\bin");
			System.out.println("java sec06.exam04_marin_argument.MainStringArrayArgument num1 num2");
			System.exit(0);
		}
		String strNum1 = args[0]; //ex. 10
		String strNum2 = args[1]; //ex. 20
		
		int num1 = Integer.parseInt(strNum1);//��Ʈ�� Ÿ���� ������ int �� �ٲܵ� Integer.parseInt(strNum1) �� Ű���带 ���� ���� ��. integer�� ���� Ŭ����		
		int num2 = Integer.parseInt(strNum2);
		int result = num1 + num2; //ex 10+20
		
		System.out.println(num1 + " + " + num2 + " = "+result);
	}

}
