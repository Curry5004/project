package Exercise;

public class Exercise07 {
	public static void main(String[] args) {
		int max = 0;
		int[] array = {1,5,3,8,2};
		for(int i=0; i<array.length; i++) {
			if(array[i]>max) {
				max = array[i];
			}
		}
		System.out.println("max: "+max);
		System.out.println();
		String str1 = "����";
		String str2 = "�ֽ�";
		
		String tempCup = "����";
		tempCup = str1; // tempCup�� ������ ������
		str1 = str2; // str1���� �ֽ��� ��
		str2 = tempCup; //str2�� ������ �����
		System.out.println("str1 : "+str1);
		System.out.println("str2 : "+str2);
		
		//� ��ü�� �̸��� �ٲ��� �ϸ� �״�� �ٲٴ°� �ȵŴ� �ٸ� ��ü�� �����Ͽ� �װ� �Ű�ü�� �Ͽ� �Ű��ش�. ��ġ ������ �ֽ��� ��� ���� ���� �ٲٱ� ���� ��� �Űܳ��� �׸��� �ʿ��� �� ó��
		
	
	}

}
