package sec10.exam02_static_blcok.review;

public class Tel {
	static String company = "����";
	static String model = " ������ 13";
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
	//statc �ʱ�ȭ ����� static �Ӹ� �ƴ϶� �׳� �ν��Ͻ��� ��

}
