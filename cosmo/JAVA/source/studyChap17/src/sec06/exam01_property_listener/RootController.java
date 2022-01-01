package sec06.exam01_property_listener;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;
import javafx.scene.text.Font;

public class RootController implements Initializable {
	@FXML private Slider slider;
	@FXML private Label label;

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		//내부 요소의 변화를 감지하는 감시자를 설정
		slider.valueProperty().addListener(new ChangeListener<Number>() {

			@Override
			public void changed(ObservableValue<? extends Number> observable, Number oldValue/*변화하기전*/, Number newValue/*변화한 후 */) {
				label.setFont(new Font(newValue.doubleValue()));
			}
			
		});
	}

}
