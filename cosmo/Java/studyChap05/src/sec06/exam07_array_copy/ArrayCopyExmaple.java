package sec06.exam07_array_copy;


public class ArrayCopyExmaple {
	public static void main(String[] args) {
		String[] oldStrArray = {"java", "array", "copy"};
		String[] newStrArray = new String[5];
		
		
		
		System.arraycopy(oldStrArray, 0, newStrArray, 0, oldStrArray.length);
		//분류의 '주소를'!!!! 복사하는 메소드
		//그러므로 old의 값이 변하면 마찬가지로 주소가 변경되므로 그 주소값을 복사해여 가지고 있는 new의 값도 변한다.
		
		for(int i=0; i<newStrArray.length; i++) {
			System.out.print(newStrArray[i]+", ");
		
		}
	}

}
