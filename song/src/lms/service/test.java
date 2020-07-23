package lms.service;

import java.util.Date;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class test {

	public static void main(String[] args) throws ParseException {
		//Timestamp stamp = new Timestamp(System.currentTimeMillis());
		//Time stamp = new Time(System.currentTimeMillis());
		//System.out.println(stamp);
		//System.out.println(Date.valueOf(stamp));
		//Date date = new Date(stamp.getTime());
		//date.valueOf(stamp);
		//System.out.println(date);
		
		// Date startTime = null;
		String startTime = "16:46";
		
		DateFormat formatter = new SimpleDateFormat("HH:mm");
		Time sTime = new Time(formatter.parse(startTime).getTime());
		System.out.println(sTime);

	}

}
