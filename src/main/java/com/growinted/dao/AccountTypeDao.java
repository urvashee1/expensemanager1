package com.growinted.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.AccountTypeBean;
@Repository
public class AccountTypeDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addAccountType(AccountTypeBean accounttypeBean) {
		String insertQuery = "insert into accounttype (accountType,deleted) values (?,?) ";

		stmt.update(insertQuery, accounttypeBean.getAccountType(), false);// insert //update //delete
	}

	public List<AccountTypeBean> getAllAccountType() {

		String selectQuery = "select * from accounttype where deleted = false";

		List<AccountTypeBean> list4 =  stmt.query(selectQuery, new BeanPropertyRowMapper<AccountTypeBean>(AccountTypeBean.class));
		
		//c1 c2 c3 
		
		return list4;
	}

	public void deleteAccountType(Integer accounttypeId) {
		String updateQuery="update accounttype set deleted = true where accounttypeId =?";
		stmt.update(updateQuery,accounttypeId);
	}
	// list

	// update

	// delete
	public void updateAccountType(AccountTypeBean accounttypeBean) {
		String updateQuery="update accounttype set accountType=? where accountTypeId=?";
	    stmt.update(updateQuery,accounttypeBean.getAccountType(),accounttypeBean.getAccountTypeId());
	}
	public AccountTypeBean getAccountTypeById(Integer accounttypeId) {
		AccountTypeBean accounttypeBean =null;
		try {
			accounttypeBean=stmt.queryForObject("select * from accounttype where accounttypeId=?",new BeanPropertyRowMapper<AccountTypeBean>(AccountTypeBean.class),new Object[] { accounttypeId});
			}
		catch(Exception e) {
			System.out.println("AccountTypeDao :: getAccountTypeById()");
	        System.out.println(e.getMessage());
		}
	return accounttypeBean;
	}
}

