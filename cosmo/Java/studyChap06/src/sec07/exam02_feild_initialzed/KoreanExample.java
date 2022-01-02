package sec07.exam02_feild_initialzed;

public class KoreanExample {
	public static void main(String[] args) {
		Korean k1 = new Korean("박자바", "011225-1234567");
		System.out.println("k1.name : "+ k1.name);
		System.out.println("k1.ssn : "+ k1.ssn);
		
		Korean k2 = new Korean("김자바", "930525-0654321");
		System.out.println("k2.name : "+k2.name);
		System.out.println("k2.ssn : "+k2.ssn);
	}
	//생성자를 바로 호출해서 초기화 할 수 있는

}

