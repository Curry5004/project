package sec06.exam06_array_reference_object;

public class ArrayReferenceObjectExample {
	public static void main(String[] args){
		String[] strArray = new String[3];
		strArray[0] = "java";
		strArray[1] = "java";
		strArray[2] = new String("java");
		
		System.out.println(strArray[0] == strArray[1]);// 상수풀의 같은 주소값을 참조하고있음
		System.out.println(strArray[0] == strArray[2]);//new로 되어 다른 주소값을가지기에 서로 주소값이 다름
		System.out.println(strArray[0].equals(strArray[2]));//문자열은 같다
		
		
		
	}

}
