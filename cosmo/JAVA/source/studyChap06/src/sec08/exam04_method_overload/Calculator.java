package sec08.exam04_method_overload;

public class Calculator {
	//���簢���� ����
	double areaRectangle(double width) {
		return width*width;
	}
	//���簢���� ����
	double areaRectangle(double width, double hight) {
		return width*hight;
	}
	// ����, �Ű����� ����, Ÿ���� �޶�� �����ε尡 �����ϸ� �̴� �����ڿ����� ���������� ����ȴ�
	
//	double areaRectangle(double width, int hight) {
//		return
//	}
	
	int cal(int x, int y) {
		return x+y;
	}
	int cal(int x, double y) {
		return x*(int)y;
	}
	

}
