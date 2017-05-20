package com.wt.dateformt;

import java.util.Date;

public class DateFormat {
	
	private String DateFormat;
	
	public DateFormat(Date date){
		DateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
	}

	public String getDateFormat() {
		return DateFormat;
	}

	public void setDateFormat(String dateFormat) {
		DateFormat = dateFormat;
	}
	
}
