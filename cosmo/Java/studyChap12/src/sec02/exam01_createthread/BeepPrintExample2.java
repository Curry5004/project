package sec02.exam01_createthread;

import java.awt.Toolkit;

public class BeepPrintExample2 {
	public static void main(String[] args) {
		
//		//1. ������ �������� ����
//		//1���� �޸� �ش� �������� �����尡 �Ҹ����� ��ɰ� �ֿܼ� ���� �����
//		//���� �ٸ� ������� ����Ǿ� �Ҹ��� �ܼ� ����� ���ÿ� ����ȴ�.
//		Runnable beepTask = new BeepTask();
//		Thread thread = new Thread(beepTask);
//		
//		thread.start();
//		//start () �ϸ� �ش� Ŭ������ run method�� �����Ŵ
//		//�ٷ� run�� �������� start�� �Ѵ�
		//�����带 �����ϴ� ��ɾ�!!
		
		
		//2 Runnable �͸� ��ü�� ���� �� ����.
		//�͸� ��ü�� �ٷ� �ʱ�ȭ �ع����� ��������!
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
		
		
		for(int i=0; i<5; i++) {
			System.out.println("��");
			try {Thread.sleep(500);} catch(Exception e) {}
		}
	}

}
