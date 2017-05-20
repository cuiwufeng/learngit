package com.wt.test;

import org.junit.Test;

import com.wt.partstring.PartString;

import junit.framework.TestCase;

public class test extends TestCase {

	@Override
	protected void setUp() throws Exception {
		super.setUp();
	}
	
	@Test
	public String TestPartString(){
		String test = "I am a people who is chinese!";
		PartString pt = new PartString(test,3,5);
		System.out.println(pt);
		return pt.getPartString();
	}


}
