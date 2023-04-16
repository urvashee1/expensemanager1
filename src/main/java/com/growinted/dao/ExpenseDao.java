package com.growinted.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.ExpenseBean;

@Repository
public class ExpenseDao {
@Autowired
JdbcTemplate stmt;
public void addExpense(ExpenseBean expenseBean) {
String insertQuery = "insert into expense (title,date,description,userId,categoryId,subCategoryId,vendorId,accountTypeId,statusId,amount,deleted) values (?,?,?,?,?,?,?,?,?,?,?) ";

stmt.update(insertQuery, expenseBean.getTitle(),expenseBean.getDate(),expenseBean.getDescription(),expenseBean.getUserId(),expenseBean.getCategoryId(),expenseBean.getSubCategoryId(),expenseBean.getVendorId(),expenseBean.getAccountTypeId(),expenseBean.getStatusId(),expenseBean.getAmount(),false);// insert //update //delete
}

public List<ExpenseBean> getAllExpense() {


	String joinQuery = "select u.firstName,e.userId,c.categoryName,e.categoryId,sc.subCategoryName,e.subCategoryId,v.vendorName,e.vendorId,a.accountType,e.accountTypeId,s.status,e.statusId, e.expenseId,e.title,e.date,e.description,e.amount,e.deleted from users u,category c, subcategory sc,vendor v,accounttype a,status s,expense e where u.userId=e.userId and c.categoryId=e.categoryId and sc.subCategoryId=e.subCategoryId and v.vendorId=e.vendorId and a.accountTypeId=e.accountTypeId and s.statusId=e.statusId and e.deleted=false";

	return stmt.query(joinQuery, new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class));
	
	//c1 c2 c3 
}

public List<ExpenseBean> getAllExpenseByUser(Integer userId) {


	String joinQuery = "select u.firstName,e.userId,c.categoryName,e.categoryId,sc.subCategoryName,e.subCategoryId,v.vendorName,e.vendorId,a.accountType,e.accountTypeId,s.status,e.statusId, e.expenseId,e.title,e.date,e.description,e.amount,e.deleted from users u,category c, subcategory sc,vendor v,accounttype a,status s,expense e where u.userId=e.userId and c.categoryId=e.categoryId and sc.subCategoryId=e.subCategoryId and v.vendorId=e.vendorId and a.accountTypeId=e.accountTypeId and s.statusId=e.statusId and e.deleted=false and e.userId = ?";

	return stmt.query(joinQuery, new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class),new Object[] {userId});
	
	//c1 c2 c3 
}
public void deleteExpense(Integer expenseId) {
	String updateQuery="update expense set deleted = true where expenseId =?";
	stmt.update(updateQuery,expenseId);
}
public ExpenseBean getExpenseById(Integer expenseId) {
	ExpenseBean expenseBean =null;
	try {
		expenseBean=stmt.queryForObject("select e.* ,u.firstname,c.categoryname,sc.subcategoryname,v.vendorname,a.accounttype,s.status from expense e,users u,category c,subcategory sc,vendor v,accounttype a,status s where expenseId=? and e.userId=u.userId and e.categoryId=c.categoryId and e.subcategoryId=sc.subcategoryId and e.vendorId=v.vendorId and e.accounttypeId=a.accounttypeId and e.statusId = s.statusId",new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class),new Object[] {expenseId});
		}
	catch(Exception e) {
		System.out.println("ExpenseDao :: getExpenseById()");
        System.out.println(e.getMessage());
	}
    return expenseBean;
}
public ExpenseBean getExpenseById(Integer expenseId,Integer userId) {
	ExpenseBean expenseBean =null;
	try {
		expenseBean=stmt.queryForObject("select e.* ,u.firstname,c.categoryname,sc.subcategoryname,v.vendorname,a.accounttype,s.status from expense e,users u,category c,subcategory sc,vendor v,accounttype a,status s where expenseId=? and e.userId=u.userId and e.categoryId=c.categoryId and e.subcategoryId=sc.subcategoryId and e.vendorId=v.vendorId and e.accounttypeId=a.accounttypeId and e.statusId = s.statusId",new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class),new Object[] {expenseId});
		}
	catch(Exception e) {
		System.out.println("ExpenseDao :: getExpenseById()");
        System.out.println(e.getMessage());
	}
    return expenseBean;
}
public void updateExpense(ExpenseBean expense) {
	stmt.update("update expense set title=?,categoryId=?,subcategoryId=?,vendorId=?,accountTypeId=?,statusId=?,amount=?,date=?,description=? where expenseId=?",
    expense.getTitle(), expense.getCategoryId(), expense.getSubCategoryId(), expense.getVendorId(), expense.getAccountTypeId(), expense.getStatusId(), expense.getAmount(), expense.getDate(), expense.getDescription(),expense.getExpenseId());
}
public void updateExpenseUser(ExpenseBean expense) {
	stmt.update("update expense set title=?,categoryId=?,subcategoryId=?,vendorId=?,accountTypeId=?,statusId=?,amount=?,date=?,description=? where expenseId=?",
    expense.getTitle(), expense.getCategoryId(), expense.getSubCategoryId(), expense.getVendorId(), expense.getAccountTypeId(), expense.getStatusId(), expense.getAmount(), expense.getDate(), expense.getDescription(),expense.getExpenseId());
}
}

