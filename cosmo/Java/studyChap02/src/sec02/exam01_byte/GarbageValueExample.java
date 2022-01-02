package sec02.exam01_byte;

public class GarbageValueExample {
	public static void main(String[] args) {
		byte byteVar = 125; // -128 ~ 127
		int intVar = 125;
		
		for(int i=0; i<5; i++) {
			byteVar++; // 126, 127, -128, -127, -126
			intVar++; //  126, 127 , 128, 129, 130
			//복습이 필요하다
			System.out.println("byteVar : " + byteVar + "\t"+"intVar : " + intVar);
		}
	}

}
