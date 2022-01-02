package sec02.exam01_createthread;

import java.awt.Toolkit;

public class BeepPrintExample2 {
	public static void main(String[] args) {
		
//		//1. 스레드 형성으로 진행
//		//1번과 달리 해당 과정에선 스레드가 소리내는 기능과 콘솔에 띄우는 기능이
//		//각자 다른 스레드로 진행되어 소리와 콘솔 출력이 동시에 진행된다.
//		Runnable beepTask = new BeepTask();
//		Thread thread = new Thread(beepTask);
//		
//		thread.start();
//		//start () 하면 해당 클래스의 run method를 실행시킴
//		//바로 run을 하지말고 start를 한다
		//스래드를 시작하는 명령어!!
		
		
		//2 Runnable 익명 객체를 만들 수 있음.
		//익명 객체를 바로 초기화 해버려서 만들어버림!
//		Thread thread = new Thread(new Runnable() {
//			@Override
//			public void run() {
//				Toolkit toolkit = Toolkit.getDefaultToolkit();
//				for(int i=0; i<5; i++) {
//					toolkit.beep();
//					try {Thread.sleep(500);} catch(Exception e) {}
//				}
//			}
//		});
		
		
		
//		//3. 람다식 사용
//		Thread thread = new Thread(()->{
//			Toolkit toolkit = Toolkit.getDefaultToolkit();
//			for(int i=0; i<5; i++) {
//				toolkit.beep();
//				try {Thread.sleep(500);} catch(Exception e) {}
//			}
//		});
		
		
		for(int i=0; i<5; i++) {
			System.out.println("띵");
			try {Thread.sleep(500);} catch(Exception e) {}
		}
	}

}
