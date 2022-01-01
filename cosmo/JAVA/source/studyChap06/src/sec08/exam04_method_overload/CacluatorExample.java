package sec08.exam04_method_overload;

public class CacluatorExample {
	public static void main(String[] args) {
		Calculator myCal = new Calculator();
		
		//정사각형
		double result = myCal.areaRectangle(10);
		System.out.println("정사각형의 넓이 :"+result);
		
		//직사각형
		double result1 = myCal.areaRectangle(10, 20);
		System.out.println("직사각형의 넓이 :"+result1);
		
		System.out.println(myCal.cal(5, 6));
		System.out.println(myCal.cal(5,10.0));
		}
	
		//동일한 method를 가지고 overloading을 동해  다른 method 처럼 쓸 수 있게 되었다
		
	
	

}
