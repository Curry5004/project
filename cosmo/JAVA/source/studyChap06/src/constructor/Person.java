package constructor;

public class Person {
	public String name;
	public float hight;
	private float weight;
	//private(접근지정자)로 설정하면 정보를 노출 안 시킬 수 있다
	//이것을 정보 은닉이라고 한다
	
	private void getPersonInfo() {
		System.out.println(name);
	}
	
	//만약 접근지정자로 묶인 정보를 읽고 싶다면
	//퍼블릭 메소드를 하나 만들어서 해당 값을 리턴 시키는 방법이 있다!
	
	

}
