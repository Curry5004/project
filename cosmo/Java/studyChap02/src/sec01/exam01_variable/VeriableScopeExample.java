package sec01.exam01_variable;
//scope = ȿ�¹���
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
//		���� �� �� ���� �ֳ��ϸ�var2�� ȿ�¹����� if �ܿ����� ����Ǳ� �����̴�
		
		for(int i=0; i<1; i++) {
			int var3;
			
			var1 = 10;
			var3 = 30;
		}
		
		var1 = 20;
	}

}
