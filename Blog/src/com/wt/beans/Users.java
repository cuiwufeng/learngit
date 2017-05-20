package com.wt.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Users {
	private int id;
	private String username;
	private String blogtitle;
	private String truename;
	private int sex;
	private int age;
	private String email;
	private int point;
	
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBlogtitle() {
		return blogtitle;
	}
	public void setBlogtitle(String blogtitle) {
		this.blogtitle = blogtitle;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setUsername(rs.getString("username"));
			this.setBlogtitle(rs.getString("blogtitle"));
			this.setTruename(rs.getString("truename"));
			this.setSex(rs.getInt("sex"));
			this.setAge(rs.getInt("age"));
			this.setEmail(rs.getString("email"));
			this.setPoint(rs.getInt("point"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
