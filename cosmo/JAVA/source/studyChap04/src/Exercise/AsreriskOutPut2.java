package Exercise;
//������ ����� ����� �ҽ��ڵ� ī�忡 ����
//����� �ɼ��ɶ��ϰ� ���°��� �ʿ��ϴ�
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
