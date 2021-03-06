package sec03.exam01_programmatical_layout;

import javafx.application.Application;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class Appmain extends Application{

	@Override
	public void start(Stage primaryStage) throws Exception {
		//루트 컨테이너 생성
		HBox hbox = new HBox();
		hbox.setPadding(new Insets(10,10,10,10));
		hbox.setSpacing(10);//요소들 간의 간격
		
		
		//루트컨테이너 안에 들어갈 요소들 작성
		TextField textField = new TextField();
		textField.setPrefWidth(200);
		
		Button button = new Button();
		button.setText("확인");
		
		
		//루트 컨테이너 리소스들을 
		//HBox에 들어가는 ObservableList 배치
		ObservableList list = hbox.getChildren();
		list.add(textField);
		list.add(button);
		
		
		//신에 루트 컨테이너 삽입
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