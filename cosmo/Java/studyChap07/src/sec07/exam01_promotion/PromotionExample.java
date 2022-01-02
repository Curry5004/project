package sec07.exam01_promotion;

public class PromotionExample {
	public static void main (String[] args) {
		B b = new B();
		C c = new C();
		D d = new D();
		E e = new E();
		
		A a1 = b;
		A a2 = c;
		A a3 = d;
		A a4 = e;
		
		B b1 = d;
		C c1 = e;
		
//		B b3 = e;
//		C c2 = d; //같은 줄기에서 종속된것이 아니기 떄문에 (상속관계 ㄴㄴ) 컴파일 에러가 난다
				
				
	}

}
