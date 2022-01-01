package sec01.exam01_variable;
//scope = 효력범위
public class VeriableScopeExample {
	public static void main(String[] args) {
		int var1;
		
		if(true) {
			int var2;
			
			var1 = 10;
			var2 = 20;
		}
		var1 = 15;
//		var2 = 25;
//		위는 쓸 수 없다 왜냐하면var2의 효력범위는 if 단에서만 적용되기 떄문이다
		
		for(int i=0; i<1; i++) {
			int var3;
			
			var1 = 10;
			var3 = 30;
		}
		
		var1 = 20;
	}

}
