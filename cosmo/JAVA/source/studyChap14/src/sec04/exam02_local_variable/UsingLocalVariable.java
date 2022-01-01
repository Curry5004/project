package sec04.exam02_local_variable;

public class UsingLocalVariable {
	void method(int arg) {
		int localVar = 40;
		
//		arg = 31;
//		localVar = 123;
		
		//람다식
		MyFunctionalInterface fi = () ->{
			//로컬변수를 사용
			System.out.println("arg: "+ arg);//밖에 있는 arg는 파이널 성격을 가지고 있기 때문에 재정의 할 수 없음
			System.out.println("localVar: " + localVar);//이도 마찬가지로 파이널로 송격이변함
		};
		
		fi.method();
	}
	
	

}
