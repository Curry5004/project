package sec03.exam01_multi_type_parameter;

public class ProductExample {
	public static void main(String[] args) {
		Product<Tv, String> product1 = new Product<>();
		//���� ������ �κп��� �ռ� ���׸��� � Ÿ���� �� �� ������־��� ������ ���� �ڿ��� ���Ӱ� ������� �ʿ䰡 ���� (�ڹ� 7���� ���� ���)
		
		product1.setKind(new Tv());
		product1.setModel("����Ʈ Ƽ��");
		Tv tv = product1.getKind();
		String tvmodel = product1.getModel();
		
		Product<Car, String> product2 = new Product<>();
		product2.setKind(new Car());
		product2.setModel("����");
		Car car = product2.getKind();
		String carModel = product2.getModel();
		
	}

}
