package sec03.exam01_multi_type_parameter;

public class ProductExample {
	public static void main(String[] args) {
		Product<Tv, String> product1 = new Product<>();
		//뒤의 생성자 부분에선 앞서 제네릭이 어떤 타입이 들어갈 찌 명시해주었기 때문에 굳이 뒤에서 새롭게 명시해줄 필요가 없다 (자바 7버전 이후 기능)
		
		product1.setKind(new Tv());
		product1.setModel("스마트 티비");
		Tv tv = product1.getKind();
		String tvmodel = product1.getModel();
		
		Product<Car, String> product2 = new Product<>();
		product2.setKind(new Car());
		product2.setModel("디젤");
		Car car = product2.getKind();
		String carModel = product2.getModel();
		
	}

}
