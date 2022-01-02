package sec02.exam02_application_cycle;

import java.util.Map;

import javafx.application.Application;
import javafx.stage.Stage;

public class AppMain extends Application{
	
	//구동을 하였을 때 어떠한 사이클로 해당 FX가 구동되는지 확인.
	//어떤 스레드에서 해당 프로세스가 구현되는지 확인하기
	
	//  -> 2.JavaFX Application Thread 구동
	//기본 생성자가 구동됨.
	public AppMain() {
		System.out.println(Thread.currentThread().getName()+":AppMain 호출");
	}
	
	//3. JavaFX Launcher inint 실행됨
	@Override
	public void init() throws Exception {
		System.out.println(Thread.currentThread().getName()+":init() 호출");
		Parameters params = getParameters();
		Map<String, String> map = params.getNamed();
		String ip = map.get("ip");
		String port = map.get("port");
		
		System.out.println("ip= "+ip);
		System.out.println("port= "+port);
	}
	//4.JavaFX Application Thread 구동
	@Override
	public void start(Stage primaryStage/*프라이머리 윈도우라는 뜻*/) throws Exception {
		System.out.println(Thread.currentThread().getName()+":start() 호출");
		primaryStage.show();
	}
	
	@Override
	public void stop() throws Exception {
		System.out.println(Thread.currentThread().getName()+":stop() 호출");
	}
	
	//1.Launch
	public static void main(String[] args) {
		//
		System.out.println(Thread.currentThread().getName()+":main() 호출");

		launch(args); //AppMain에서 색체 생성 및 메인 윈도우 생성
	}
}