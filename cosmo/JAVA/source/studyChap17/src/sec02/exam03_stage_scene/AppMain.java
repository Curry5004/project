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
		//1. ���� ��Ʈ �����̳�(Parent)����
		//���� ��ü�� VBox ����
		VBox root = new VBox(); 
		root.setPrefWidth(350);
		root.setPrefHeight(150);
		root.setAlignment(Pos.CENTER);// ���� ��ҵ� ��� ����
		root.setSpacing(20);
		
		//2. ��Ʈ �����̳ʿ� �� ��ҵ� ����
		Label lable = new Label();
		lable.setText("Hello, JavaFX");
		lable.setFont(new Font(50));
		
		Button button = new Button();
		button.setText("Ȯ��");
		button.setOnAction(event ->Platform.exit()/*���ٽ� ���*/);
		
		
		//��Ʈ �����̳ʿ� ���ҽ��� ����
		root.getChildren().add(lable);
		root.getChildren().add(button);
		
		//�ſ� ��Ʈ �����̳ʸ� �־���
		Scene scene = new Scene(root);
		
		//�����췹 ���� �־���
		primaryStage.setScene(scene);
		//������ �ȿ� �� ���� �� �Ʒ��� vbox ���� vbox �ȿ� ������ label�̶� button ��

		primaryStage.setTitle("AppMain");
		
		//������ �����ֱ� �κ�
		primaryStage.show();
	}
	public static void main(String[] args) {
		launch(args); //AppMain���� ��ü ���� �� ���� ������ ����
	}
}