package chap05;

import java.util.Arrays;

public class ArrayEx04 {
	public static void main(String[] args) {
		//불연속적인 값들로 구성된 배열
//		int[] code= {-4, -1, 3, 6, 11};
//		int[] arr= new int[10];
//		
//		for(int i=1; i<arr.length;i++) {
//			int tmp = (int)(Math.random()*code.length);
//			arr[i] = code[tmp];
//		}
//		System.out.println(Arrays.toString(arr));
		
		
		/*
		 * 문제:
		 * code 1~ 45값을 입력하고
		 * 로또 번호 6개 (한게임) 분량 추출하기 만들기
		 * (추출 번호는 중복되면 안됨)
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
