package sec05.exam04_local_varible_access;

public class Anonymous {
	private int field;
	
	public void method(final int arg1, int arg2) {
		final int var1 = 0;
		int var2 = 0;
		
		field = 10;
		
//		arg1 = 20; //컴파일 에러! 왜?arg1은 상수로 선언되어 변경 할 수 없다
//		arg2 = 20; //이것도 쓰면 20줄에서 뻑남. 위에서 상수처럼 선언 되었기 때문(?) 상수부분 복습
//		var1 = 30; //위에서 상수로 선언헀잖아
//		var2 = 30; //arg2 처럼 연결지어새 생각
		
		Calculatable calc = new Calculatable() {
			@Override
			public int sum() {
				int result = field + arg1 + arg2 + var1 + var2;
				return result;
			}
		};
		System.out.println(calc.sum());
	}
}
