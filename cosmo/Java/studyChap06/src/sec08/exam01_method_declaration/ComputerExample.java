package sec08.exam01_method_declaration;

public class ComputerExample {
	public static void main(String[] args) {
		Computer myCom = new Computer();
		
		int [] values= {1,2,3};
		int result1 = myCom.sum1(values);
		System.out.println("result 1: "+result1);
		
		int result2 = myCom.sum1(new int[] {1,2,3,4,5}); //미리 선언하지말고 바로 선언
		System.out.println("result 2: "+result2);
		
		int result3 = myCom.sum2(1,2,3);
		System.out.println("result 3: "+result3);
		
		int result4 = myCom.sum2(1,2,3,4,5);
		System.out.println("result 4: "+result4);
	}

}
