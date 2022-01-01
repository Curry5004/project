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
		System.out.println("로그아웃 되었습니다");
		
	}

}
