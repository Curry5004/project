package sec06.exam02_array_bynew;

public class ArrayCreatByNewExample {
	public static void main (String[] args) {
		int[] arr1 = new int[3];
		for(int i=0; i<arr1.length;i++) {
			System.out.println("intarr1["+i+"] : " + arr1[i]);// int[]�� �ʱⰪ�� 0�� ������ �ִ� ���� Ȯ�� �� �� �ִ�
		}
		System.out.println();
		arr1[0] = 10;
		arr1[1] = 20;
		arr1[2] = 30;
		for(int i=0; i<arr1.length;i++) {
			System.out.println("intarr1["+i+"] : " + arr1[i]); // �迭�� �ּҰ��� ������ ������ ���ڰ� �ԷµǾ��ִ�
		}
		System.out.println();
		
		double[] arr2 = new double[3];
		for(int i=0; i<arr2.length;i++) {
			System.out.println("doublearr2["+i+"] : " + arr2[i]);
		}
		
		arr2[0] = 0.1;
		arr2[1] = 0.2;
		arr2[2] = 0.3;
		for(int i=0; i<arr2.length; i++) {
			System.out.println("doublearr2["+i+"] : "+arr2[i]);
		}
		System.out.println();
		String[] arr3 = new String [3];
		for(int i=0; i<arr3.length;i++) {
			System.out.println("Stringarr3["+i+"] : "+arr3[i]); //string Ÿ���� �⺻���� null���� Ȯ�� �� �� �ִ�
		}
		arr3[0] = "10��";
		arr3[1] = "11��";
		arr3[2] = "12��";
		for(int i = 0; i<arr3.length; i++) {
			System.out.println("Stringarr3["+i+"] : "+arr3[i]);
		}
			
	}

}