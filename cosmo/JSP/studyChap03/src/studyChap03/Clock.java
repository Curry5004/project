package studyChap03;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Clock {
	
	public String now() {
		SimpleDateFormat format = new SimpleDateFormat("HH시mm분ss초");
		return format.format(new Date());
	}
}

