package sec06.exam07_array_copy;


public class ArrayCopyExmaple {
	public static void main(String[] args) {
		String[] oldStrArray = {"java", "array", "copy"};
		String[] newStrArray = new String[5];
		
		
		
		System.arraycopy(oldStrArray, 0, newStrArray, 0, oldStrArray.length);
		//�з��� '�ּҸ�'!!!! �����ϴ� �޼ҵ�
		//�׷��Ƿ� old�� ���� ���ϸ� ���������� �ּҰ� ����ǹǷ� �� �ּҰ��� �����ؿ� ������ �ִ� new�� ���� ���Ѵ�.
		
		for(int i=0; i<newStrArray.length; i++) {
			System.out.print(newStrArray[i]+", ");
		
		}
	}

}
