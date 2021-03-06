package sec04.exam01_hbox_vbox.images;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class AppMain extends Application {
	@Override
	public void start(Stage primaryStage) throws Exception {
//		Parent root= FXMLLoader.load(getClass().getResource("root.fxml"));
		VBox root = (VBox)FXMLLoader.load(getClass().getResource("root.fxml"));
		Scene scene = new Scene(root);
		
		primaryStage.setTitle("AppMain");
		primaryStage.setScene(scene);
		primaryStage.show();
		primaryStage.setResizable(false);//해당하는 x,y 좌표가 윈도우 크기에 따라 변하는 것을 방지하기 위해
	}
	
	public static void main(String[] args) {
		launch(args);
	}

	

}
