package com.growinted.controller;

import java.io.File;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.growinted.bean.ExpenseChartBean;
import com.growinted.bean.ProfileBean;
import com.growinted.bean.UpdatePasswordBean;
import com.growinted.bean.UserBean;
import com.growinted.dao.UserDao;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;

	@GetMapping("userdashboard")
	public String home(Model model,HttpServletRequest request) {

	
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
		Integer sumOfExpenseAmounts=userDao.getSumOfIncomeAmountForMonthly(userId);
		Integer sumOfIncomeAmounts=userDao.getSumOfIncomeAmountForMonthly(userId);
		Integer sumOfExpenseAmountt=userDao.getSumOfExpenseAmountForCurrentDatee(userId);
		Integer sumOfIncomeAmountt=userDao.getSumOfIncomeAmountForCurrentDatee(userId);
		List<ExpenseChartBean> linechartData = userDao.getCategoryStats(userId);
		List<ExpenseChartBean> piechartData = userDao.getVendorStats(userId);
		model.addAttribute("totalExpensess",sumOfExpenseAmounts);
		model.addAttribute("totalIncomess",sumOfIncomeAmounts);
		model.addAttribute("totalExpenses",sumOfExpenseAmountt);
		model.addAttribute("totalIncomes",sumOfIncomeAmountt);
		model.addAttribute("linechartData", linechartData);
		model.addAttribute("piechartData", piechartData);
		return "UserDashboard";
	}
	@GetMapping("myprofileuser")
	public String myProfileUser() {
		return "MyProfileUser";
	}
	@PostMapping("/saveprofilepic1")
	public String saveProfilePic1(ProfileBean profileBean) {
		System.out.println("--->"+profileBean.getUserId());
		System.out.println(profileBean.getProfileImg().getOriginalFilename());
		try {
			File userDir = new File("C:\\sts\\ExpenseManager\\src\\main\\resources\\static\\assets\\profiles",
					profileBean.getUserId() + "");
			if (userDir.exists() == false) {
				userDir.mkdir();
			}
			File file = new File(userDir, profileBean.getProfileImg().getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, profileBean.getProfileImg().getBytes());
			profileBean.setImageUrl("assets/profiles/" + profileBean.getUserId() + "/"
					+ profileBean.getProfileImg().getOriginalFilename());
			
			userDao.updateImageUrl(profileBean);
			
		} catch (Exception e) {
			//e.printStackTrace();
		}
		return "redirect:/usermyprofile";
	}
	@PostMapping("/updatechangepasswordd")
	public String updateChangePasswordd(UpdatePasswordBean upBean,HttpServletRequest request) {
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
			upBean.setUserId(userId);
		System.out.println(upBean.getPassword());
		System.out.println(upBean.getNewPassword());
		//System.out.println(upBean.getConfirmpassword());
		userDao.changePasswordd(upBean);
		return "MyProfile";
	}
}
