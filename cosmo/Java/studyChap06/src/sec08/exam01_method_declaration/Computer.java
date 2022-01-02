package sec08.exam01_method_declaration;

public class Computer {
	int sum1(int[] values) {
		int sum = 0;
		for(int i=0; i<values.length; i++) {
			sum += values[i];
		}
		return sum;
	}
	int sum2(int ... values) {//하나하나 각각의 값은 모르지만 몇개든 받을 수 있다
		int sum = 0;
		for(int i=0; i<values.length; i++) {
			sum += values[i];
		}
		return sum;
	}

}
