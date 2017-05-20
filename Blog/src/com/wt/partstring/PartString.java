package com.wt.partstring;

public class PartString {
	
	private String PartString;
	
	public PartString(String str,int beginIndex,int endIndex){
	
		String str2=null;
		try{
			str2=str.substring(beginIndex, endIndex);
		} catch(Exception e){
			str2=str.substring(beginIndex, str.length());
		}
		setPartString(str2);
	}

	public String getPartString() {
		return PartString;
	}

	public void setPartString(String str) {
		PartString = str;
	}
	
}
