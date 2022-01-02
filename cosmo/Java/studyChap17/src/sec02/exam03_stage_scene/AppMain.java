package sec02.exam03_stage_scene;


import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

public class AppMain extends Application{

	@Override
	public void start(Stage primaryStage) throws Exception {
		//1. 먼저 루트 컨테이너(Parent)생성
		//하위 객체인 VBox 생성
		VBox root = new VBox(); 
		root.setPrefWidth(350);
		root.setPrefHeight(150);
		root.setAlignment(Pos.CENTER);// 내부 요소들 가운데 정령
		root.setSpacing(20);
		
		//2. 루트 컨테이너에 들어갈 요소들 정의
		Label lable = new Label();
		lable.setText("Hello, JavaFX");
		lable.setFont(new Font(50));
		
		Button button = new Button();
		button.setText("확인");
		button.setOnAction(event ->Platform.exit()/*람다식 사용*/);
		
		
		//루트 컨테이너에 리소스들 삽입
		root.getChildren().add(lable);
		root.getChildren().add(button);
		
		//신에 루트 컨테이너를 넣어줌
		Scene scene = new Scene(root);
		
		//위도우레 신을 넣어줌
		primaryStage.setScene(scene);
		//윈도우 안에 신 들어가고 신 아래에 vbox 들어가고 vbox 안에 만들어둔 label이랑 button 들어감

		primaryStage.setTitle("AppMain");
		
		//윈도우 보여주기 부분
		primaryStage.show();
	}
	public static void main(String[] args) {
		launch(args); //AppMain에서 색체 생성 및 메인 윈도우 생성
	}
}