package chap05;

import java.util.Arrays;

public class ArrayEx04 {
	public static void main(String[] args) {
		//�ҿ������� ����� ������ �迭
//		int[] code= {-4, -1, 3, 6, 11};
//		int[] arr= new int[10];
//		
//		for(int i=1; i<arr.length;i++) {
//			int tmp = (int)(Math.random()*code.length);
//			arr[i] = code[tmp];
//		}
//		System.out.println(Arrays.toString(arr));
		
		
		/*
		 * ����:
		 * code 1~ 45���� �Է��ϰ�
		 * �ζ� ��ȣ 6�� (�Ѱ���) �з� �����ϱ� �����
		 * (���� ��ȣ�� �ߺ��Ǹ� �ȵ�)
		 */
		
		int[] codeNo = new int[45];
		int[] lottoArray = new int[6];
		for(int no=0; no<codeNo.length; no++) {
			codeNo[no]=no+1;
		}
	
		for(int i=0; i<lottoArray.length; i++) {
			int tmp = (int)(Math.random()*codeNo.length);
			lottoArray[i]=codeNo[tmp];
			for(int j=0; j<i; j++) {
				if(lottoArray[i]==lottoArray[j]) {
					i-=1;
					break;
				}
			}
			
		}
		System.out.print(Arrays.toString(lottoArray));
	}

}
