package sec02.exam01_createthread;

import java.awt.Toolkit;

public class BeepPrintExample3 {
	public static void main(String[] args) {
		
//		//1. Thread Ŭ�����κ��� ���� ����
//		Runnable beepTask = new BeepTask();
//		Thread thread = new Thread(beepTask);
//		
//		//start () �ϸ� �ش� Ŭ������ run method�� �����Ŵ
//		//�ٷ� run�� �������� start�� �Ѵ�
//		//�����带 �����ϴ� ��ɾ�!!
		
		
//		//2 Runnable �͸� ��ü�� ���� �� ����.
//		//�͸� ��ü�� �ٷ� �ʱ�ȭ �ع����� ��������!
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
		
		
		
//		//3. ���ٽ� ���
//		Thread thread = new Thread(()->{
//			Toolkit toolkit = Toolkit.getDefaultToolkit();
//			for(int i=0; i<5; i++) {
//				toolkit.beep();
//				try {Thread.sleep(500);} catch(Exception e) {}
//			}
//		});
		
		
		//4. Tread�� ���
		Thread thread = new BeepThread();

		
		
		
//		//5. Tread �͸� ��ü�� ���� �� ����.
//				//�͸� ��ü�� �ٷ� �ʱ�ȭ �ع����� ��������!
//		Thread thread = new Thread() {
//			@Override
//			public void run() {
//				Toolkit toolkit = Toolkit.getDefaultToolkit();
//				for(int i=0; i<5; i++) {
//					toolkit.beep();
//					try {Thread.sleep(500);} catch(Exception e) {}
//				}
//			}
//		};
		
		
		
		
		thread.start();
		for(int i=0; i<5; i++) {
			System.out.println("��");
			try {Thread.sleep(500);} catch(Exception e) {}
		}
	}

}
