package com.growinted.controller;

import java.util.List;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.growinted.bean.AccountTypeBean;
import com.growinted.bean.IncomeBean;
import com.growinted.bean.StatusBean;
import com.growinted.bean.UserBean;
import com.growinted.dao.AccountTypeDao;
import com.growinted.dao.IncomeDao;
import com.growinted.dao.StatusDao;
import com.growinted.dao.UserDao;
@Controller
public class IncomeController {
	@Autowired
	UserDao userDao;
	@Autowired
	AccountTypeDao accountTypeDao;
	@Autowired
	StatusDao statusDao;
	@Autowired
	IncomeDao incomeDao;
@GetMapping("/newincome")
public String newincome(Model model) {
	List<UserBean> list=userDao.getAllUser();
    List<AccountTypeBean> list1=accountTypeDao.getAllAccountType();
    List<StatusBean> list2=statusDao.getAllStatus();
    model.addAttribute("list",list);
    model.addAttribute("list1",list1);
	model.addAttribute("list2",list2);
	return "Income";
}
@PostMapping("/saveincome")
public String saveincome(IncomeBean incomeBean,HttpServletRequest request) {
	System.out.println(incomeBean.getTitle());
	int userId=-1;
    //read all cookies from request
    String firstName="";
    Cookie c[]=request.getCookies();//jsEssionId userId octo firstName 
    for(Cookie x:c) {//jsessionid userId firstName
 	   if(x.getName().equals("userId")) {
 		   userId=Integer.parseInt(x.getValue());
 	   }
 	   if(x.getName().equals("firstName")) {
 		   firstName=x.getValue();
 		   }
    }
    System.out.println("userId ->"+userId);
    System.out.println("firstName->"+firstName);
    incomeBean.setUserId(userId);
	incomeDao.addIncome(incomeBean);
	return "redirect:/listincomeuser";
}
@GetMapping("/listincome")
public String listIncome(Model model) {
	List<IncomeBean>listIncome=incomeDao.getAllIncome();
	model.addAttribute("listIncome",listIncome);
	return "ListIncome";
	
}
@GetMapping("/listincomeuser")
public String listIncomeUser(Model model,HttpServletRequest request) {
	int userId = -1;
	 String firstName="";
Cookie c[]=request.getCookies();//jsEssionId userId octo firstName 
for(Cookie x:c) {//jsessionid userId firstName
  if(x.getName().equals("userId")) {
	   userId=Integer.parseInt(x.getValue());
  }
  if(x.getName().equals("firstName")) {
	   firstName=x.getValue();
	   }
}
System.out.println("userId ->"+userId);
System.out.println("firstName->"+firstName);

	List<IncomeBean>listIncome=incomeDao.getAllIncomeByUser(userId);
	model.addAttribute("listIncome",listIncome);
	return "ListIncomeUser";
	
}
@GetMapping("/deleteincome/{incomeId}")
public String deleteincome(@PathVariable("incomeId") Integer incomeId) {
	incomeDao.deleteIncome(incomeId);
	return "redirect:/listincome";
}
@GetMapping("/viewincome")
public String viewIncomeById(@RequestParam("incomeId") Integer incomeId,Model model) {
	IncomeBean incomeBean = incomeDao.getIncomeById(incomeId);
	model.addAttribute("incomeBean",incomeBean);
	return "ViewIncome";
}
@GetMapping("/viewincomeuser")
public String viewIncomeById(@RequestParam("incomeId") Integer incomeId,Model model,HttpServletRequest request) {
	int userId=-1;
    //read all cookies from request
    String firstName="";
    Cookie c[]=request.getCookies();//jsEssionId userId octo firstName 
    for(Cookie x:c) {//jsessionid userId firstName
 	   if(x.getName().equals("userId")) {
 		   userId=Integer.parseInt(x.getValue());
 	   }
 	   if(x.getName().equals("firstName")) {
 		   firstName=x.getValue();
 		   }
    }
    System.out.println("userId ->"+userId);
    System.out.println("firstName->"+firstName);
    //incomeBean.setUserId(userId);
	IncomeBean incomeBean = incomeDao.getIncomeById(incomeId,userId);
	model.addAttribute("incomeBean",incomeBean);
	return "ViewIncomeUser";
}
@GetMapping("/editincome")
public String editIncome(@RequestParam("incomeId") Integer incomeId,Model model) {
	IncomeBean income = incomeDao.getIncomeById(incomeId);
	model.addAttribute("income",income);
	model.addAttribute("list",userDao.getAllUser());
	model.addAttribute("list1",accountTypeDao.getAllAccountType());
	model.addAttribute("list2",statusDao.getAllStatus());
	return "EditIncome";
}
@PostMapping("/updateincome")
public String updateIncome(IncomeBean income) {
	incomeDao.updateIncome(income);
	return "redirect:/listincome";
}
@GetMapping("/editincomeuser")
public String editIncomeUser(@RequestParam("incomeId") Integer incomeId,Model model,HttpServletRequest request) {
	int userId = -1;
	 String firstName="";
Cookie c[]=request.getCookies();//jsEssionId userId octo firstName 
for(Cookie x:c) {//jsessionid userId firstName
if(x.getName().equals("userId")) {
	   userId=Integer.parseInt(x.getValue());
}
if(x.getName().equals("firstName")) {
	   firstName=x.getValue();
	   }
}
System.out.println("userId ->"+userId);
System.out.println("firstName->"+firstName);
	IncomeBean income = incomeDao.getIncomeById(incomeId,userId);
	model.addAttribute("income",income);
	model.addAttribute("list",userDao.getAllUser());
	model.addAttribute("list1",accountTypeDao.getAllAccountType());
	model.addAttribute("list2",statusDao.getAllStatus());
	return "EditIncomeUser";
}
@PostMapping("/updateincomeuser")
public String updateIncomeUser(IncomeBean income) {
	incomeDao.updateIncome(income);
	return "redirect:/listincomeuser";
}
}
