package sec02.exam01_application_start;

import javafx.application.Application;
import javafx.stage.Stage;

public class AppMain extends Application{

	@Override
	public void start(Stage primaryStage) throws Exception {
		//윈도우 보여주기 부분
		primaryStage.show();
	}
	public static void main(String[] args) {
		launch(args); //AppMain에서 색체 생성 및 메인 윈도우 생성
	}
}