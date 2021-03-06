package sec05.exam02_fxml_controller;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;

public class RootController implements Initializable {
	//어노테이션을 사용
	@FXML private Button btn1;
	@FXML private Button btn2;
	@FXML private Button btn3;
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		//익명 객체 사용
		btn1.setOnAction(new EventHandler<ActionEvent>() {
			@Override
			public void handle(ActionEvent event) {
				handleBtn1Action(event);
			}
		});
		//람다식을 사용
		btn2.setOnAction(event->handleBtn2Action(event));
		btn3.setOnAction(event->handleBtn3Action(event));
	}
	public void handleBtn1Action(ActionEvent event) {
		System.out.println("버튼 1클릭");
	}
	public void handleBtn2Action(ActionEvent event) {
		System.out.println("버튼 2클릭");
	}
	public void handleBtn3Action(ActionEvent event) {
		System.out.println("버튼 3클릭");
	}

}
