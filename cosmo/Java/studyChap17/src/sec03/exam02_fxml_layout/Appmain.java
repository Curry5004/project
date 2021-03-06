package sec03.exam02_fxml_layout;

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
//		//루트 컨테이너 생성
//		HBox hbox = new HBox();
//		hbox.setPadding(new Insets(10,10,10,10));
//		hbox.setSpacing(10);//요소들 간의 간격
//		
//		
//		//루트컨테이너 안에 들어갈 요소들 작성
//		TextField textField = new TextField();
//		textField.setPrefWidth(200);
//		
//		Button button = new Button();
//		button.setText("확인");
//		
//		
//		//루트 컨테이너 리소스들을 
//		//HBox에 들어가는 ObservableList 배치
//		ObservableList list = hbox.getChildren();
//		list.add(textField);
//		list.add(button);
		
		
		
		/*
		 * 위에있는거 필요없음 같은 페키지 내에 작성된 root.fxml을 불러와서 사용
		 * 프로그램적으로 작성한 것이 아니라 FXML로 작성한 것 확실히 코드적으로 작성 안하니
		 * 편하긴 한데... 원래 했던 것이 있다보니 이게 좀 더 편하내 ㅋㅋㅋ
		 */
		
		Parent root = FXMLLoader.load(getClass().getResource("root.fxml"));
		Scene scene = new Scene(root);
		
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