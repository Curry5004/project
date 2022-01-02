package sec08.exam04_method_overload;

public class Calculator {
	//정사각형의 넓이
	double areaRectangle(double width) {
		return width*width;
	}
	//직사각형의 넓이
	double areaRectangle(double width, double hight) {
		return width*hight;
	}
	// 순서, 매개변수 개수, 타입이 달라야 오버로드가 가능하며 이는 생성자에서도 마찬가지로 적용된다
	
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
