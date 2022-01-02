package sec02.exam02_application_cycle;

import java.util.Map;

import javafx.application.Application;
import javafx.stage.Stage;

public class AppMain extends Application{
	
	//������ �Ͽ��� �� ��� ����Ŭ�� �ش� FX�� �����Ǵ��� Ȯ��.
	//� �����忡�� �ش� ���μ����� �����Ǵ��� Ȯ���ϱ�
	
	//  -> 2.JavaFX Application Thread ����
	//�⺻ �����ڰ� ������.
	public AppMain() {
		System.out.println(Thread.currentThread().getName()+":AppMain ȣ��");
	}
	
	//3. JavaFX Launcher inint �����
	@Override
	public void init() throws Exception {
		System.out.println(Thread.currentThread().getName()+":init() ȣ��");
		Parameters params = getParameters();
		Map<String, String> map = params.getNamed();
		String ip = map.get("ip");
		String port = map.get("port");
		
		System.out.println("ip= "+ip);
		System.out.println("port= "+port);
	}
	//4.JavaFX Application Thread ����
	@Override
	public void start(Stage primaryStage/*�����̸Ӹ� �������� ��*/) throws Exception {
		System.out.println(Thread.currentThread().getName()+":start() ȣ��");
		primaryStage.show();
	}
	
	@Override
	public void stop() throws Exception {
		System.out.println(Thread.currentThread().getName()+":stop() ȣ��");
	}
	
	//1.Launch
	public static void main(String[] args) {
		//
		System.out.println(Thread.currentThread().getName()+":main() ȣ��");

		launch(args); //AppMain���� ��ü ���� �� ���� ������ ����
	}
}