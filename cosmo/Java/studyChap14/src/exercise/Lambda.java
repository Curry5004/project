package exercise;

public class Lambda {
	//1번
	(a,b) -> a>b?a:b
	
	//2번
	(name, i) -> System.out.println(name+"="+i)
	
	//3qjs
	
	x -> x^2
	
	//4번
	
	r -> int(Math().random() *6)
	() -> (int)(Math.random()*6)
	
	//5번
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
	
	//6번
	() -> new int[]
	
	
	

}
