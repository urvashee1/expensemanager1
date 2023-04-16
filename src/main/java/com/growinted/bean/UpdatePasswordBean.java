package com.growinted.bean;

public class UpdatePasswordBean {
String email;
String password;
String otp;
String newPassword;
Integer userId;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getOtp() {
	return otp;
}
public void setOtp(String otp) {
	this.otp = otp;
}

public String getNewPassword() {
	return newPassword;
}
public void setNewPassword(String newPassword) {
	this.newPassword = newPassword;
}
public Integer getUserId() {
	return userId;
}
public void setUserId(Integer userId) {
	this.userId = userId;
}
}
