package com.growinted.bean;

public class ExpenseChartBean {
String month;
String categoryName;
String vendorName;
Long amount;
Integer userId;
Integer vendorId;
Integer categoryId;

public Integer getCategoryId() {
	return categoryId;
}
public void setCategoryId(Integer categoryId) {
	this.categoryId = categoryId;
}
public String getMonth() {
	return month;
}
public void setMonth(String month) {
	this.month = month;
}
public Long getAmount() {
	return amount;
}
public void setAmount(Long amount) {
	this.amount = amount;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public String getVendorName() {
	return vendorName;
}
public void setVendorName(String vendorName) {
	this.vendorName = vendorName;
}
public Integer getUserId() {
	return userId;
}
public void setUserId(Integer userId) {
	this.userId = userId;
}
public Integer getVendorId() {
	return vendorId;
}
public void setVendorId(Integer vendorId) {
	this.vendorId = vendorId;
}
}
