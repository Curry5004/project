package sec06.exam01_array_bylist;

public class ArrayCreatByValueListExample {
	public static void main(String[] args) {
		
		int[] point = {123, 323, 3, 1231};
		System.out.println(point[2]);
		point[2] = 21;
		System.out.println(point[2]);
		
		
		double[] doubleArray = {1.1, 2,2, 3,3};
		System.out.println(doubleArray[1]);
		
		String[] strArray = {"가", "나", "다"};
		System.out.println(strArray[0]);
		
		int[] scores = {83, 90, 87};
		System.out.println("scores[0] : "+ scores[0]);
		System.out.println("scores[1] : "+ scores[1]);
		System.out.println("scores[2] : "+ scores[2]);
		//scores라는 이름 하나도 저 점수들을 한번에 모음
		
		int sum = 0;
		for(int i=0; i<scores.length; i++) {
			sum += scores[i];
			//일일히 하나하나 지정 안해도 이걸로 쉽게 전개가 됨
		}
		System.out.println("총합 : " + sum);
		double avg = (double)sum/3;
		System.out.println("평균 : "+avg);
	}

}
