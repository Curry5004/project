package chap04;

public class FlowEx20 {
	public static void main(String[] args) {
		int[] arr = {10, 20, 30, 40, 50};
		//����: for�ݺ����� ����ؼ� 
		/*
		 * 10 20 30 40 50
		 * 10 20 30 40 50 
		 * sum=150 �����
		 */
		
		for(int i=0; i<arr.length; i++) {
			if(i<arr.length-1) {
				System.out.print(arr[i]+" ");
			} else {
				System.out.print(arr[i]);
			}
		}
		System.out.println();
		int sum = 0;
		for(int i=0; i<arr.length; i++) {
			if(i<arr.length-1) {
				sum +=arr[i];
				System.out.print(arr[i]+" ");
			} else {
				sum +=arr[i];
				System.out.print(arr[i]);
			}
			
		}
		System.out.println();
		System.out.println("sum="+sum);
			
		
	}

}
