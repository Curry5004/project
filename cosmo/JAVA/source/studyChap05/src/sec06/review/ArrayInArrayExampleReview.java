package sec06.review;

public class ArrayInArrayExampleReview {
	public static void main(String[] args) {
		int[][] intarr1 = null;
		intarr1 = new int[][] {{12,12}, {11,123,124,524}};
		
//		int[] intarr2 = null;
//		intarr2 = new int[][] {{2,2}, {3,4,1,1}};
//		// �Ҵ� ũ�Ⱑ ������ �迭�� ������ ���� �缳�� �� �� �� ũ�⸦ ���� �� �� ����.
		
//		ArrayReferenceObjectExample review
		
		
		String[] strArray = new String[3];
		
		strArray[0] = "java";
		strArray[1] = "java";
		strArray[2] = new String("java");
		
		System.out.println(strArray[0]==strArray[1]);
		System.out.println(strArray[2]==strArray[1]);
		System.out.println(System.identityHashCode(strArray[1]));
		System.out.println(System.identityHashCode(strArray[2]));
		//new�� ����Ͽ� ��ü�� ����Ͽ����� ������ ���ͷ��̶� �ϴ��� �ٸ� ������ ������ �ȴ�
		System.out.println();
		
		//�迭 ���� ����
		//EX.1 ���� �ٷ��� �غ���!
		
		int[] oldarr = {1,2,3};
		int[] newarr = new int[5];
		
		for (int i=0; i<oldarr.length; i++) {
			newarr[i] = oldarr[i];
			System.out.println(newarr[i]);
		}
		
		//EX.2 �޼ҵ带 ����Ͽ� �����غ���
		//�����ϴ�. �׷��� ��ó�� �޼ҵ带 ������� �ʰ� ���� ����� �ͼ�������
		int[] arr1 = {1,2,3,4,5,6};
		int[] arr2 = new int[10];
		
		System.arraycopy(arr1, 0, arr2, 0, arr1.length);
		for(int i=0; i<arr2.length; i++) {
			System.out.print(arr2[i]);
		}
		
		/*�� �� �� �޼ҵ带 ����Ͽ� ����� �� �ش� �׸��� '��'�� �ּҵǴ� ���� �ƴ϶�
		�ش� ���� ������ �ִ� '�ּ�'�� ���� �Ǵ� ���̴�. �׷��Ƿ� ������ �迭�� �׸��� ���� ��ȭ�ϸ�
		�� ���� ���� ����� �׸��� ���� ��ȭ�ϰԵȴ�.
		�̸� ���Ͽ� �� �޼ҵ带 ���� ����� �׸��� ��ü�� ������ ��ü�� �����ϴٴ� ���� �� �� ������ �̷���
		���縦 shaloow copy��� �Ѵ�.*/
	
		
		
		
		
		
		
		
	}

}
