package com.growinted.controller;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.growinted.bean.ForgetPasswordBean;
import com.growinted.bean.LoginBean;
import com.growinted.bean.UpdatePasswordBean;
import com.growinted.bean.UserBean;
import com.growinted.dao.UserDao;
import com.growinted.service.EmailService;
import com.growinted.util.OtpGenerator;
//annotation
@Controller

public class SessionController {
	@Autowired
	UserDao userDao;
	@Autowired
	EmailService emailService;
	//jsp open
@GetMapping("/signup")
public String signup() {
	return "Signup";
}
@PostMapping("/saveuser")
public String saveuser(UserBean user,Model model) {
	System.out.println("Jai Hind...");
	System.out.println(user.getFirstName());
	System.out.println(user.getLastName());
	System.out.println(user.getEmail());
	System.out.println(user.getPassword());
	//System.out.println(user.getRole());
	
	UserBean userBean=userDao.getUserByEmail(user.getEmail());
	if(userBean==null) {
		userDao.insertUser(user);
	return "Login";
	}else {
		model.addAttribute("error","Email is already Registerd with Us");
		return "Signup";
	}
	
}

@GetMapping("/login")
public String login() {
	return "Login";
}

@PostMapping("/authentication")
public String authentication(LoginBean login, Model model,HttpServletResponse response,HttpSession session){
	System.out.println(login.getEmail());
	System.out.println(login.getPassword());
	UserBean userBean=userDao.authenticateUser(login);
	if(userBean== null) {
		//invaild
		model.addAttribute("error","Invaild Credentials");
				return "Login";
			}
	else{
		//valid
		//cookie
		Cookie c1=new Cookie("userId",userBean.getUserId()+"");
		Cookie c2=new Cookie("firstName",userBean.getFirstName()+"");
		//add cookie
		response.addCookie(c1);
		response.addCookie(c2);
		
		//session
		session.setAttribute("userId",userBean.getUserId());
		session.setAttribute("user",userBean);
		//max inactive interval time
		session.setMaxInactiveInterval(60*5);//second
		if(userBean.getRole() == 1) {
				//admin
				return "redirect:/admindashboard";
			}
	        else if(userBean.getRole()== 2){
	        	//buyer
	        	return "redirect:/userdashboard";
	        }else {
	        	//vaild
	        	return "404";
	        }
	}
}

@GetMapping("/")
public String root() {
	return "Login";
}
@GetMapping("/forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
}
@PostMapping("/sendotpforforgetpassword")
public String sendOtpForForgetPassword(ForgetPasswordBean forgetPasswordBean,Model model) {
	System.out.println(forgetPasswordBean.getEmail());
	UserBean user= userDao.findUserByEmail(forgetPasswordBean);
	if(user== null) {
		//error
		model.addAttribute("error","Invaild Email");
		return "ForgetPassword";
		}
		else{
		//otp
			//generate otp
			// int otp =(int)(Math.random()*1000000);
			String otp =OtpGenerator.generateOTP(6);
			userDao.updateOtp(forgetPasswordBean.getEmail(),otp);

			emailService.sendEmailForForgetPassword(forgetPasswordBean.getEmail(), otp);

	return "redirect:/updatepasswordjspopen";
}
}
@GetMapping("/updatepasswordjspopen")
public String updatepasswordJspOpen() {
	return "UpdatePassword";
}
@PostMapping("/updatemypassword")
public String updateMyPassword(UpdatePasswordBean upBean) {
System.out.println(upBean.getEmail());
System.out.println(upBean.getPassword());
System.out.println(upBean.getOtp());
UserBean user=userDao.verifyOtpByEmail(upBean);
if(user==null) {
	return "UpdatePassword";
}
else {
	userDao.updateMyPassword(upBean);
    return "Login";
}
}
@GetMapping("/logout")
public String logout(HttpSession session) {
	session.invalidate();
	return "redirect:/login";
}
@GetMapping("/logoutt")
public String logoutt(HttpSession session) {
	session.invalidate();
	return "redirect:/login";
}
@GetMapping("/listuser")
public String listUser(Model model) {
	List<UserBean>listUser=userDao.getAllUser();
	model.addAttribute("listUser",listUser);
	return "ListUser";
}
@GetMapping("/newuser")
public String newuser() {
	return "User";
}
@GetMapping("/viewuser")
public String viewUserById(@RequestParam("userId") Integer userId,Model model) {
	UserBean userBean = userDao.getUserById(userId);
	model.addAttribute("userBean",userBean);
	return "ViewUser";
}
@GetMapping("/deleteuser/{userId}/{currentStatus}")
public String deleteUser(@PathVariable("userId") Integer userId,@PathVariable("currentStatus") boolean currentStatus){
userDao.deleteUser(userId,currentStatus);
//System.out.println("dfghj");
	return "redirect:/listuser";
}
@PostMapping("/saveusers")
public String saveUsers(UserBean userbean) {
    System.out.println(userbean.getFirstName());
	userDao.insertUser(userbean);
	return "User";
}

@GetMapping("/edituser")
public String editUser(@RequestParam("userId") Integer userId,Model model) {
	UserBean userBean = userDao.getUserById(userId);
	model.addAttribute("userBean",userBean);
	return "EditUser";
}
@PostMapping("/updateuser")
public String updateUser(UserBean userBean) {
	userDao.updateUser(userBean);
	return "redirect:/listuser";
}
}
