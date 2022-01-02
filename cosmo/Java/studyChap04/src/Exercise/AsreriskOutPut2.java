package Exercise;
//마름모 만들기 만들기 소스코드 카톡에 있음
//제어문을 능수능란하게 쓰는것이 필요하다
public class AsreriskOutPut2 { 
	public static void main(String[] args) {
		int lineCount=7;
		int spaceCount = lineCount-1;
		int starCount=1;
		
		for (int i=0; i<7; i++) {
			if(i<5) {
			for(int j=0; j<spaceCount; j++) {
				System.out.print('_'); //___
			}
			for(int j=0; j<starCount; j++) {
				System.out.print("*");
			}
			for (int j=0; j<spaceCount; j++) {
				System.out.print('_');
			}
			
			spaceCount -=1;
			starCount +=2;
		}
	}

}
