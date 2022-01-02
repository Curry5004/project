package Exercise;

public class Exercise08 {
	public static void main(String[] args) {
		int[][] array = {
				{95,86},
				{83,92,96},
				{78,83,93,87,88}
		};
		
		int sum = 0;
		double avg = 0.0;
		
		int count = 0;
		for(int i=0; i<array.length;i++) {
			for(int j=0; j<array[i].length; j++) {//중첩 배열의 항목 수 만큼 돌려야하니까!
				System.out.print(array[i][j]+" ");
				sum += array[i][j];
				count++;
				
			}
			System.out.println();
		}
		avg = (double)sum/count;
		
		System.out.println(sum);
		System.out.println(avg);
		
	}

}
