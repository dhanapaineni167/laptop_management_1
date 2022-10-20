package com.sboot.laptopManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sboot.laptopManagement.entity.User;
import com.sboot.laptopManagement.service.LaptopService;
import com.sboot.laptopManagement.service.UserService;
@Controller
public class UserController {
	@Autowired
    UserService us; 
	
	@Autowired
	LaptopService ls;
	
	@RequestMapping("home")
	public String getHome() {
		return "login.jsp";
	}
	
	// user register
	@RequestMapping("userregister")
	@ResponseBody
	public String addLaptop(User u)
	{
		return us.registerUser(u);
	}
	
	// user signin details
	@RequestMapping("signin")
	public ModelAndView signIn(int userId, String password)
	{
		ModelAndView mvc = new ModelAndView();
		if(userId == 1234 && password.equals("admin")) {
			mvc.setViewName("laptopmanagement.jsp");
		}
		else if(us.checkUserLogin(userId, password)) {
			mvc.setViewName("laptopIndex.jsp");
			mvc.addObject("user",us.viewUser(userId));
			//mvc.addObject("list", ls.viewAlllaptop());
		}
		else {
			mvc.setViewName("login.jsp");
		}
			
		return mvc ;
	}
	
	// purchaseLaptop of user
	@RequestMapping("purchaseLaptop")
	@ResponseBody
	public String purchase(int userId, int lid) {
		return us.purchaseLaptop(lid, userId);
	}
	
	//users get invoice
	@RequestMapping("getinvoice")
	public ModelAndView getinvoice(int uid) {
		ModelAndView mvc = new ModelAndView("purchaselist.jsp");
		 mvc.addObject("list", us.getinvoice(uid));
		 return mvc;
	}
	
	// viewPurchase
	@RequestMapping("buyLaptop")
	public ModelAndView getpurchaselist() {
		ModelAndView mav = new ModelAndView("dashboard.jsp");
		mav.addObject("list", us.viewPurchaseList());
		return mav;
	}
	
}
