package Exercise;

public class Exercise05 {
	public static void main(String[] args) {
		int x;
		int y;
		
		for(x=1; x<=10; x++) {
			for(y=1; y<=10; y++) {
				int result = (4*x) + (5*y);
				if (result%60==0) {
					System.out.println("("+x+","+y+")");
					}
				}
			}
	}
		
}


