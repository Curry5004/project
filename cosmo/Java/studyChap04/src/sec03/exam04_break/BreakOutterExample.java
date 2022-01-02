package sec03.exam04_break;

public class BreakOutterExample {
	public static void main(String[] args) {
		
	blabel:	for(char cu='A'; cu<'Z'; cu++){
			for(char cl='a'; cl<='z'; cl++) {
				System.out.println(cu + " - " + cl);
				if(cl=='g') {
					break blabel;
				}
			}
			
	    }

	}
}
