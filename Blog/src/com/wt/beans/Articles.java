package com.wt.beans;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;


public class Articles {
	private int id;
	private String title;
	private String cont;
	private Date pdate;
	private int isleaf;
	private int rootid;
	private int point;
	private int uid;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public int getIsleaf() {
		return isleaf;
	}
	public void setIsleaf(int isleaf) {
		this.isleaf = isleaf;
	}
	public int getRootid() {
		return rootid;
	}
	public void setRootid(int rootid) {
		this.rootid = rootid;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setTitle(rs.getString("title"));
			this.setCont(rs.getString("cont"));
			this.setPdate(rs.getTimestamp("pdate"));
			this.setIsleaf(rs.getInt("isleaf"));
			this.setRootid(rs.getInt("rootid"));
			this.setPoint(rs.getInt("point"));
			this.setUid(rs.getInt("uid"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
