package sec08.exam01_split_stringTokenizer;

public class SpiteExample {
	public static void main(String[] args	) {
		String text = "ȫ�浿&�̼�ȫ,�ڿ���,���ڹ�-�ָ�ȣ";
		String[] names = text.split("&|,|-");
		
		for(String name:names) {
			System.out.println(name);
		}
	}

}
