package sec04.exam01_overriding;

public class Computer extends Calculator {
	@Override
	double areaCircle(double r) {
		System.out.println("Computer ��ü�� areaCicle() ����");
		return Math.PI*r*r;
	}

	@Override
	int test1(int num) {
		return super.test1(num)+1;
	}
	
	
	

}
