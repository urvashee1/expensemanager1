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
import com.growinted.bean.CategoryBean;
import com.growinted.bean.ExpenseBean;
import com.growinted.bean.StatusBean;
import com.growinted.bean.SubCategoryBean;
import com.growinted.bean.UserBean;
import com.growinted.bean.VendorBean;
import com.growinted.dao.AccountTypeDao;
import com.growinted.dao.CategoryDao;
import com.growinted.dao.ExpenseDao;
import com.growinted.dao.StatusDao;
import com.growinted.dao.SubCategoryDao;
import com.growinted.dao.UserDao;
import com.growinted.dao.VendorDao;

@Controller
public class ExpenseController {
	@Autowired
	UserDao userDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subcategoryDao;
	@Autowired
	VendorDao vendorDao;
    @Autowired
	AccountTypeDao accountTypeDao;
    @Autowired
	StatusDao statusDao;
    @Autowired
	ExpenseDao expenseDao;
    
@GetMapping("/newexpense")
public String newExpense(Model model) { // method
//	
	    List<UserBean> list=userDao.getAllUser();
        List<CategoryBean> list1=categoryDao.getAllCategory();
        List<SubCategoryBean> list2=subcategoryDao.getAllSubCategory();
        List<VendorBean> list3=vendorDao.getAllVendor();
        List<AccountTypeBean> list4=accountTypeDao.getAllAccountType();
        List<StatusBean> list5=statusDao.getAllStatus();
        model.addAttribute("list",list);
		model.addAttribute("list1",list1);
		model.addAttribute("list2",list2);
		model.addAttribute("list3",list3);
		model.addAttribute("list4",list4);
		model.addAttribute("list5",list5);
		
	       return "Expense";
}
@PostMapping("/saveexpense")
public String saveexpense(ExpenseBean expenseBean,HttpServletRequest request) {
	System.out.println(expenseBean.getTitle());

	// cookie name
   //  cookie userid 
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
	
    expenseBean.setUserId(userId);
	expenseDao.addExpense(expenseBean);
	return "redirect:/listexpenseuser";
}
@GetMapping("/listexpense")
public String listExpense(Model model) {
	List<ExpenseBean>listExpense=expenseDao.getAllExpense();
	model.addAttribute("listExpense",listExpense);
	return "ListExpense";
	
}
@GetMapping("/listexpenseuser")
public String listExpenseUser(Model model,HttpServletRequest request) {
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
		
	   // expenseBean.setUserId(userId);
		//expenseDao.addExpense(expenseBean);
	List<ExpenseBean>listExpense=expenseDao.getAllExpenseByUser(userId);
	model.addAttribute("listExpense",listExpense);
	return "ListExpenseUser";
	
}
@GetMapping("/deleteexpense/{expenseId}")
public String deleteexpense(@PathVariable("expenseId") Integer expenseId) {
	expenseDao.deleteExpense(expenseId);
	return "redirect:/listexpense";
}
@GetMapping("/viewexpense")
public String viewExpenseById(@RequestParam("expenseId") Integer expenseId,Model model) {
	ExpenseBean expenseBean = expenseDao.getExpenseById(expenseId);
	model.addAttribute("expenseBean",expenseBean);
	return "ViewExpense";
}
@GetMapping("/viewexpenseuser")
public String viewExpenseById(@RequestParam("expenseId") Integer expenseId,Model model,HttpServletRequest request) {
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
	ExpenseBean expenseBean = expenseDao.getExpenseById(expenseId,userId);
	model.addAttribute("expenseBean",expenseBean);
	return "ViewExpenseUser";
}
@GetMapping("/editexpense")
public String editExpense(@RequestParam("expenseId") Integer expenseId,Model model) {
    ExpenseBean expense = expenseDao.getExpenseById(expenseId);
    model.addAttribute("expense",expense);
    model.addAttribute("list",userDao.getAllUser());
    model.addAttribute("list1",categoryDao.getAllCategory());
    model.addAttribute("list2",subcategoryDao.getAllSubCategory());
    model.addAttribute("list3",vendorDao.getAllVendor());
    model.addAttribute("list4",accountTypeDao.getAllAccountType());
    model.addAttribute("list5",statusDao.getAllStatus());
    System.out.println("description");
    return "EditExpense";
}
@PostMapping("/updateexpense")
public String updateExpense(ExpenseBean expense) {
	expenseDao.updateExpense(expense);
	return "redirect:/listexpense";
}
@GetMapping("/editexpenseuser")
public String editExpense(@RequestParam("expenseId") Integer expenseId,Model model,HttpServletRequest request) {
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
    ExpenseBean expense = expenseDao.getExpenseById(expenseId,userId);
    model.addAttribute("expense",expense);
    model.addAttribute("list",userDao.getAllUser());
    model.addAttribute("list1",categoryDao.getAllCategory());
    model.addAttribute("list2",subcategoryDao.getAllSubCategory());
    model.addAttribute("list3",vendorDao.getAllVendor());
    model.addAttribute("list4",accountTypeDao.getAllAccountType());
    model.addAttribute("list5",statusDao.getAllStatus());
    return "EditExpenseUser";
}
@PostMapping("/updateexpenseuser")
public String updateExpenseUser(ExpenseBean expense) {
	expenseDao.updateExpense(expense);
	return "redirect:/listexpenseuser";
}
}

