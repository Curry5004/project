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
//		//��Ʈ �����̳� ����
//		HBox hbox = new HBox();
//		hbox.setPadding(new Insets(10,10,10,10));
//		hbox.setSpacing(10);//��ҵ� ���� ����
//		
//		
//		//��Ʈ�����̳� �ȿ� �� ��ҵ� �ۼ�
//		TextField textField = new TextField();
//		textField.setPrefWidth(200);
//		
//		Button button = new Button();
//		button.setText("Ȯ��");
//		
//		
//		//��Ʈ �����̳� ���ҽ����� 
//		//HBox�� ���� ObservableList ��ġ
//		ObservableList list = hbox.getChildren();
//		list.add(textField);
//		list.add(button);
		
		
		
		/*
		 * �����ִ°� �ʿ���� ���� ��Ű�� ���� �ۼ��� root.fxml�� �ҷ��ͼ� ���
		 * ���α׷������� �ۼ��� ���� �ƴ϶� FXML�� �ۼ��� �� Ȯ���� �ڵ������� �ۼ� ���ϴ�
		 * ���ϱ� �ѵ�... ���� �ߴ� ���� �ִٺ��� �̰� �� �� ���ϳ� ������
		 */
		
		Parent root = FXMLLoader.load(getClass().getResource("root.fxml"));
		Scene scene = new Scene(root);
		
		//�����쿡 ���� �־���
		primaryStage.setScene(scene);
		primaryStage.setTitle("AppMain");
		
		//�����츦 �����ֵ��� ����
		primaryStage.show();
		
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}