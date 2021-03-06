package sec05.exam01_event_handler;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class AppMain extends Application{
	
	@Override
	public void start(Stage primaryStage) throws Exception {
		HBox root = new HBox();
		root.setPrefSize(200, 50);
		root.setAlignment(Pos.CENTER);
		root.setSpacing(20);
		
		Button btn1 = new Button("버튼1");
		//진행할 엑션 이벤트를 익명객체로 만들어서 그 자리에서 간편하게 한번에 만드는것
		btn1.setOnAction(new EventHandler<ActionEvent>() {
			@Override
			public void handle(ActionEvent event) {
				System.out.println("버튼 1 클릭");
			}
		});
		
		Button btn2 = new Button("버튼2");
		//진행할 이벤트를 간단하게 람다식으로 작성
		btn2.setOnAction(event -> System.out.println("버튼 2 클릭"));
		
		//하나하나 추가할 수 있으나 이렇게 한번에 전부 추가 할 수 있다
		root.getChildren().addAll(btn1,btn2);
		Scene scene = new Scene(root);
		
		primaryStage.setScene(scene);
		primaryStage.setTitle("AppMain");
		primaryStage.setOnCloseRequest(event-> System.out.println("종료 클릭"));
		primaryStage.show();
		
		/*
		 * Note
		 * 버튼을 누를 떄 마다 이벤트 핸들러가 해당 하는 엑션이 발생하였을 때 
		 * 기능을 수행 시킬 수 있겠금 해준다.
		 * 이 이벤트 핸들러의 경우 익명 객체로 작동할 수 있지만 람다식으로도 작성 할 수 있다
		 */
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
