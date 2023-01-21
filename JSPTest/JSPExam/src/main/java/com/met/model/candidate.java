package com.met.model;

import java.sql.*;

public class candidate {
	private String name;
	private String emailId;
	private String mobile;
	private String Address;
	private String password;
	
	private int userId;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean getRegistration() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/candidate", "root", "root");
			con.setAutoCommit(false);
			try{
				PreparedStatement pstmt = con.prepareStatement("insert into newcandidate values (?, ?, ?, ?, ?)");
				pstmt.setString(1, this.name);
				pstmt.setString(2, this.emailId);
				pstmt.setString(3, this.mobile);
				pstmt.setString(4, this.Address);
				pstmt.setString(5, this.password);
				pstmt.executeUpdate();
				pstmt.close();
				con.commit();
				return true;
			}catch(SQLException e){
				con.rollback();
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}
