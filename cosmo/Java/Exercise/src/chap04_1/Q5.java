package chap04_1;

public class Q5 {
	public static void main (String[] args) {
		int linecount = 9;
		int starcount = 1;
		int spacecount = 4;
		int returnline = linecount/2+1;
		
		for(int i=1; i<=linecount; i++) {
				for(int j=1; j<=spacecount; j++) {
					System.out.print("_");
				}
				for(int j=1; j<=starcount; j++) {
					System.out.print("*");
				}
//				for(int j=1; j<=spacecount; j++) {
//					System.out.print("_");
//				}
				if(i<returnline) {
					starcount+=2;
					spacecount-=1;
				} else {
					starcount-=2;
					spacecount+=1;
				}
				
			System.out.println();
		}
		
		
		
//		for(int i=1; i<=linecount; i++) {
//			if(i<returnline) {
//				for(int j=1; j<=spacecount; j++) {
//					System.out.print("_");
//				}
//				for(int j=1; j<=starcount; j++) {
//					System.out.print("*");
//				}
//				for(int j=1; j<=spacecount; j++) {
//					System.out.print("_");
//				}
//				starcount+=2;
//				spacecount-=1;
//			}  else {
//				starcount-=2;
//				spacecount+=1;
//				for(int j=1; j<=spacecount; j++) {
//					System.out.print("_");
//				}
//				for(int j=1; j<=starcount; j++) {
//					System.out.print("*");
//				}
//				for(int j=1; j<=spacecount; j++) {
//					System.out.print("_");
//			}
//				
//					
//			}
//			System.out.println();
//		}
	}

}
