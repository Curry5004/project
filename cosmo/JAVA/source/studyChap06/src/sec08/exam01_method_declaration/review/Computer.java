package sec08.exam01_method_declaration.review;

public class Computer {
	
	void powerOn() {
		System.out.println("������ �մϴ�");
	}
	int sum1(int[] values) {
		int result =0;
		for(int i=0; i<values.length;i++) {
			result += values[i];
		}
		return result;
	}
	int sum2(int ... values) {
		int result=0;
		for(int i=0; i<values.length;i++) {
			result += values[i];
		}
		return result;
	}

}
