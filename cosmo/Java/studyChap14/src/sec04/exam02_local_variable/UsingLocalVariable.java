package sec04.exam02_local_variable;

public class UsingLocalVariable {
	void method(int arg) {
		int localVar = 40;
		
//		arg = 31;
//		localVar = 123;
		
		//���ٽ�
		MyFunctionalInterface fi = () ->{
			//���ú����� ���
			System.out.println("arg: "+ arg);//�ۿ� �ִ� arg�� ���̳� ������ ������ �ֱ� ������ ������ �� �� ����
			System.out.println("localVar: " + localVar);//�̵� ���������� ���̳η� �۰��̺���
		};
		
		fi.method();
	}
	
	

}
