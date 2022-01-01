package Exercise;

public class LoginExample {
	public static void main(String[] args) {
		try {
			login("white", "12345");
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		try {
			login("blue", "54321");
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	
	public static void login(String id, String password) throws NotExistIDException, WrongPasswordException {
		if(!id.equals("blue")) {
			throw new NotExistIDException("아이디가 일치 하지 않습니다");
		} else if(!password.equals("12345")){
			throw new WrongPasswordException("비밀번호가 일치하지 않습니다");
		}
	}

}
