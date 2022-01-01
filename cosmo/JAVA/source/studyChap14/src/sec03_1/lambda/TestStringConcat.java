package sec03_1.lambda;

public class TestStringConcat {
	public static void main(String[] args) {
		String s1= "Hello";
		String s2= "Wordl";
		StringConcat concat = (s, v) -> System.out.println(s+", "+v);
		concat.makeString(s1, s2);
	}

}
