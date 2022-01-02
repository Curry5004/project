package Exercise;
//피라미드 만들기
public class AsreriskOutPut {
	public static void main(String[] args) {
		int lineCount=4;		
		int spaceCount = lineCount-1;
		int starCount=1;
		
		for (int i=0; i<4; i++) {
			for(int j=0; j<spaceCount; j++) {
				System.out.print(' '); //___
			}
			for(int j=0; j<starCount; j++) {
				System.out.print("*");
			}
			for (int j=0; j<spaceCount; j++) {
				System.out.print(' ');
			}
			spaceCount -=1;
			starCount +=2;
			System.out.println();
		}
	}

}
