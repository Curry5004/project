package sec10.exam02_static_blcok.review;

public class Tel {
	static String company = "애플";
	static String model = " 아이폰 13";
	static String info;
	
	static {
		info = company + model;
	}
	
	int a = 10;
	double b = 10.0;
	
	int plus(int x, int y){
		int result = x+y;
		return result;
	}
	
	{
		a=20;
		b=20.2;
	}
	//statc 초기화 블록은 static 뿐만 아니라 그냥 인스턴스의 필

}
