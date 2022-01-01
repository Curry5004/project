package Exercise;

public class Exercise07 {
	public static void main(String[] args) {
		int max = 0;
		int[] array = {1,5,3,8,2};
		for(int i=0; i<array.length; i++) {
			if(array[i]>max) {
				max = array[i];
			}
		}
		System.out.println("max: "+max);
		System.out.println();
		String str1 = "우유";
		String str2 = "주스";
		
		String tempCup = "빈컵";
		tempCup = str1; // tempCup에 우유가 들어가있음
		str1 = str2; // str1에는 주스가 들어감
		str2 = tempCup; //str2에 우유를 담아줌
		System.out.println("str1 : "+str1);
		System.out.println("str2 : "+str2);
		
		//어떤 객체의 이름을 바꾸자 하면 그대로 바꾸는건 안돼니 다른 객체를 형성하여 그걸 매게체로 하여 옮겨준다. 마치 우유와 주스가 담긴 컵을 서로 바꾸기 위해 담시 옮겨놓을 그릇이 필요한 것 처럼
		
	
	}

}
