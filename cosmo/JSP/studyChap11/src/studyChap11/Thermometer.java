package studyChap11;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {
	private Map<String, Double> locaitonCelsiusMap = new HashMap<>();
	
	public void setCelsius(String location, Double value) {
		locaitonCelsiusMap.put(location, value);
	}
	//섭씨온도
	public Double getCelsius(String location) {
		return locaitonCelsiusMap.get(location);
	}
	
	//화씨온도
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if(celsius==null) {
			return null;
		} return celsius.doubleValue()*1.8+32.0;
	}
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
	
	
}
