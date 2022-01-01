package sec07.exam01_generic_extends_implements;

public class ChildProductAndStorageExample {
	public static void main(String[] args) {
		ChildProduct<Tv, String, String> product = new ChildProduct<>();
		product.setKind(new Tv());
		product.setModel("스마트티비");
		product.setCompany("Samsung");
		//상속받은 제네릭 객체들은 부모 객체에 있는 객체들을 전부 사용할 수 있다
		
		Storage<Tv> storage = new StorageImpl<Tv>(100);
		storage.add(new Tv(), 0);
		Tv tv = storage.get(0);
	}

}
