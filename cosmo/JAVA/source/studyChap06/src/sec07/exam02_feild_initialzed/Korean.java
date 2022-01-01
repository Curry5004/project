package sec07.exam02_feild_initialzed;

public class Korean {
	//필드
	
	String nation = "대한민국";
	String name;
	String ssn;
	
//	public Korean(String n, String s) {
//		name=n;
//		ssn=s;
//		
//	}
	
//	public Korean(String name, String ssn) {
//		name=name;
//		ssn=ssn;
//		//이렇게 하면 Example에서 null값만 나온다.
//	
//		
//	}
	
	public Korean(String name, String ssn) {
		this.name=name; //위의 name을 받아옴
		this.ssn=ssn;
		//이렇게 하면 Example에서 null값만 나온다.
	
		
	}

}
