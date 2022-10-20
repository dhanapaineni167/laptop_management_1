package com.sboot.laptopManagement.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sboot.laptopManagement.entity.Laptop;
import com.sboot.laptopManagement.service.LaptopService;

@Controller
public class LaptopController {
	
	@Autowired
	private LaptopService ls;
	
	// add laptop
	@RequestMapping("addlaptop")
	@ResponseBody
	public String addLaptop( Laptop l)
	{
		
		
		return ls.addLaptop(l);
	}
	
	//get laptop
	@RequestMapping("index")
	public String getLaptopHome(){
		return "login.jsp";
	}
	
	@RequestMapping("viewlaptop")			//method for view product
	public ModelAndView viewlaptop(int lid){
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displaylaptop.jsp");
		mvc.addObject("prd", ls.viewlaptop(lid));
		mvc.addObject("type","single");
		return mvc;
	}
	
	@RequestMapping("viewalllaptop")			//method for view all product

	public ModelAndView viewAllProduct(){
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displaylaptop.jsp");
		mvc.addObject("plist", ls.viewAlllaptop());
		mvc.addObject("type","list");
		return mvc;
	}
	//method for  update laptop
	@RequestMapping("updatelaptop")
	@ResponseBody
	public String updateLaptop( Laptop l)
	{
		return ls.updateLaptop(l);
	}
	
	// delete laptop
	@RequestMapping("deletelaptop")
	@ResponseBody
	public String deleteLapto( int lid){
		return ls.deleteLaptop(lid);
	}
	
}

