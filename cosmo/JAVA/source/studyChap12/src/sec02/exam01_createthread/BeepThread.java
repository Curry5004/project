package sec02.exam01_createthread;

import java.awt.Toolkit;

public class BeepThread extends Thread {//스레드를 상속받아서 진행 할 수도 있음
	@Override
	public void run() {
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		for(int i=0; i<5; i++) {
			toolkit.beep();
			try {Thread.sleep(500);} catch(Exception e) {}
		}
	}

}
