package sec03.exam03_margin_padding;

import javafx.application.Application;
import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.geometry.Insets;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class Appmain extends Application{

	@Override
	public void start(Stage primaryStage) throws Exception {
		//페딩 생성
//		//루트 컨테이너 생성
//		HBox hbox = new HBox();
		//페딩 생성
//		hbox.setPadding(new Insets(50,10,10,50));//순서 위 오른쪽 아래 왼쪽 순
//		
//		
//		//루트 컨테이너에 들어갈 리소스 생성
//		Button button = new Button();
//		//박스 크기 설정
//		button.setPrefSize(100, 100);
		
		
		//Margin 형성하는거!!
		HBox hbox = new HBox();
		Button button = new Button();
		button.setPrefSize(100, 100);
		HBox.setMargin(button, new Insets(10,10,50,50));
		
		
		
		//컨테이너에 요소 삽입
		hbox.getChildren().add(button);
		Scene scene = new Scene(hbox);
		
		//윈도우에 신을 넣어줌
		primaryStage.setScene(scene);
		primaryStage.setTitle("AppMain");
		
		//윈도우를 보여주도록 명령
		primaryStage.show();
		
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}