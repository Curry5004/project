package sec01.exam01_variable;

public class VariableScopeExample2 {

	public static void main(String[] args) {
		int v1 = 15;
		if(v1>10) {
			int v2;
			v2 = v1 - 10;
		
			
		}
		
//		int v3 = v1 + v2 +5; //v2 변수를 사용불가하기 때문에 scope 지역 변수이기 때문에 참조 불가)

	}

}
