package sec05.exam01_exit;

public class ExitExmaple {
	
	public static void main(String[] args) {
		System.setSecurityManager(new SecurityManager(){
			@Override
			public void ChekeExit(int status) {
				if(status!=5) {
					throw new SecurityManager();
					
				}
			}
		});
		
	}
	//보안관리자 요청
	

}
