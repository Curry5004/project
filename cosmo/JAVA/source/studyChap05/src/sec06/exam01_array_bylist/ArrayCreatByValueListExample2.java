package sec06.exam01_array_bylist;

public class ArrayCreatByValueListExample2 {
	public static void main(String[] args) {

		
//		int[] scores; 
//		scores = {83, 90, 87}; // �̷��� �ȉ´� ������ ������
		
//		int[] scores = {83, 90, 87}; �̷��� ���ٷ� �����ϰų�
		
		int[] scores;
		scores = new int[] {83, 90, 87}; // ��ü�� new�� ��� ���ٷ� ��°Ŷ�� ����
		
		
		int sum = 0;		
		sum = add(scores);
		System.out.println("���� : " + sum);
		
		
		//���ϵ� �� ���� sum2�� ���ԵǾ���
		int sum2 = add(new int[] {70, 90, 80});
		System.out.println("���� : " + sum2);
		System.out.println("");
	
	}
	// �迭 �Ű������� ���� �հ踦 �������ش�. �̸� ���⼭ ����� ���� �� �ؼ� ���� ���Ͻ����ִ� ���� �ٽ� ������ �� �ʿ䰡 ����
	// int[] scores = new int[] {83, 90, 87} 
	public static int add(int[] scores) {
		 int sum = 0;
		 for(int i=0; i<scores.length; i++) {
			 sum += scores[i];
		 }
		 return sum;
	}
//����Ʈ
//	ù��°�� �迭 �����ϴ°� ���Ű� ���� �̱����� 2 ������ �迭 �޼ҵ� ��°� �����ذ���
}
