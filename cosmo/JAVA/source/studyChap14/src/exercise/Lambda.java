package exercise;

public class Lambda {
	//1��
	(a,b) -> a>b?a:b
	
	//2��
	(name, i) -> System.out.println(name+"="+i)
	
	//3qjs
	
	x -> x^2
	
	//4��
	
	r -> int(Math().random() *6)
	() -> (int)(Math.random()*6)
	
	//5��
	arr[] -> {
		int sum=0;
		for(int i: arr) {
			sum +=i;
		}
		return sum;
	};
	
	(int[] arr)->{
		int sum=0;
		for(int i: arr) {
			sum +=i;
		}
		return sum;
		
	}
	
	//6��
	() -> new int[]
	
	
	

}
