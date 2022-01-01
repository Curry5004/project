package exercise.q5;

public interface CalcExample {
	public static void main(String[] args) {
		Calc calc = (int x, int y) -> x+y;
		
		int sum = calc.add(10, 20);
		System.out.println(sum);
		
		
		
	}

}
