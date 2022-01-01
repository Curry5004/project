package sec04.exam06_gridpane;

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
		
		Parent root = FXMLLoader.load(getClass().getResource("root.fxml"));
		Scene scene = new Scene(root);
		
		//�����쿡 ���� �־���
		primaryStage.setScene(scene);
		primaryStage.setTitle("AppMain");
		
		//�����츦 �����ֵ��� ���
		primaryStage.show();
		
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}