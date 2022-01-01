package sec02.exam01_createthread;

import java.awt.Toolkit;

public class BeepTask implements Runnable{ //Thread俊辑 流立 积己
	
	@Override
	public void run() {
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		for(int i=0; i<5; i++) {
			toolkit.beep();
			try {Thread.sleep(500);} catch(Exception e) {}
		}
	}
}
