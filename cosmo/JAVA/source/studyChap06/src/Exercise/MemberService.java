package Exercise;

public class MemberService {
	
	boolean login(String id, String password) {
		if(id=="hong") {
			if(password=="12345") {
				return true;
			}
			
		} 
			return false;
	}
	void logout() {
		System.out.println("�α׾ƿ� �Ǿ����ϴ�");
		
	}

}
