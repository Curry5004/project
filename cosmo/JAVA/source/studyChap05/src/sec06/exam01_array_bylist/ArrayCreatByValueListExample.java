package sec06.exam01_array_bylist;

public class ArrayCreatByValueListExample {
	public static void main(String[] args) {
		
		int[] point = {123, 323, 3, 1231};
		System.out.println(point[2]);
		point[2] = 21;
		System.out.println(point[2]);
		
		
		double[] doubleArray = {1.1, 2,2, 3,3};
		System.out.println(doubleArray[1]);
		
		String[] strArray = {"��", "��", "��"};
		System.out.println(strArray[0]);
		
		int[] scores = {83, 90, 87};
		System.out.println("scores[0] : "+ scores[0]);
		System.out.println("scores[1] : "+ scores[1]);
		System.out.println("scores[2] : "+ scores[2]);
		//scores��� �̸� �ϳ��� �� �������� �ѹ��� ����
		
		int sum = 0;
		for(int i=0; i<scores.length; i++) {
			sum += scores[i];
			//������ �ϳ��ϳ� ���� ���ص� �̰ɷ� ���� ������ ��
		}
		System.out.println("���� : " + sum);
		double avg = (double)sum/3;
		System.out.println("��� : "+avg);
	}

}
