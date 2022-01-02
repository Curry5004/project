package sec06.exam01_array_bylist;

public class ArrayCreatByValueListExample2 {
	public static void main(String[] args) {

		
//		int[] scores; 
//		scores = {83, 90, 87}; // 이렇겐 안됀다 컴파일 에러남
		
//		int[] scores = {83, 90, 87}; 이렇게 한줄로 선언하거나
		
		int[] scores;
		scores = new int[] {83, 90, 87}; // 객체를 new로 잡아 두줄로 잡는거라면 가능
		
		
		int sum = 0;		
		sum = add(scores);
		System.out.println("총합 : " + sum);
		
		
		//리턴된 총 합을 sum2에 대입되어짐
		int sum2 = add(new int[] {70, 90, 80});
		System.out.println("총합 : " + sum2);
		System.out.println("");
	
	}
	// 배열 매개변수의 값들 합계를 리턴해준다. 미리 여기서 계산을 전부 다 해서 위로 리턴시켜주니 굳이 다시 계산식을 쓸 필요가 없다
	// int[] scores = new int[] {83, 90, 87} 
	public static int add(int[] scores) {
		 int sum = 0;
		 for(int i=0; i<scores.length; i++) {
			 sum += scores[i];
		 }
		 return sum;
	}
//포인트
//	첫번째는 배열 선언하는걸 본거고 여기 이그젬플 2 에서는 배열 메소드 답는걸 보여준거임
}
