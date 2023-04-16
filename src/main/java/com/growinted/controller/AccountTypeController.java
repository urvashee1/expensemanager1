package com.growinted.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.growinted.bean.AccountTypeBean;
import com.growinted.dao.AccountTypeDao;
@Controller
public class AccountTypeController {

	@Autowired
	AccountTypeDao accounttypeDao;

	@GetMapping("/newaccounttype") // url--browser
	public String newAccountType() { // method

		return "AccountType";// jsp--open
	}

	@PostMapping("/saveaccounttype")
	public String saveAccountType(AccountTypeBean accounttypeBean) {
		System.out.println(accounttypeBean.getAccountType());// categoryName;
		accounttypeDao.addAccountType(accounttypeBean);
		return "AccountType";
	}

	@GetMapping("/listaccounttype")
	public String listAccountType(Model model) {

		// pull all category from db-table
		List<AccountTypeBean> list = accounttypeDao.getAllAccountType();
		model.addAttribute("list",list);
		return "ListAccountType";
	}
	@GetMapping("/deleteaccounttype/{accounttypeId}")
	public String deleteAccountType(@PathVariable("accounttypeId") Integer accounttypeId) {
		accounttypeDao.deleteAccountType(accounttypeId);
		return "redirect:/listaccounttype";
	}
	@GetMapping("/editaccounttype")
	public String editAccountType(@RequestParam("accounttypeId") Integer accounttypeId,Model model) {
		AccountTypeBean accounttypeBean = accounttypeDao.getAccountTypeById(accounttypeId);
		model.addAttribute("accounttypeBean",accounttypeBean);
		return "EditAccountType";
    }
	@PostMapping("/updateaccounttype")
	public String updateAccountType(AccountTypeBean accounttypeBean) {
		accounttypeDao.updateAccountType(accounttypeBean);
		return "redirect:/listaccounttype";
	}
}

