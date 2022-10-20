package com.sboot.laptopManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.sboot.laptopManagement.dao.LaptopDao;
import com.sboot.laptopManagement.entity.Laptop;


@Service
public class LaptopService {
	@Autowired
	private LaptopDao ll;
	
	//Test the added laptop
	public String addLaptop(Laptop l) {
	try
	{
		l.setQuantity(10);
		ll.save(l);
		return "Laptop Added";
	}catch(Exception e) {
		return "something went wrong";
	}
	}
	
	public Laptop viewlaptop(int lid)
	{
		try {
			Laptop l = ll.findById(lid).orElse(null);
		if(l!=null)
		{
			return l;
		}
		return null;
	}catch (Exception e) {
		return null;
	}
}
	//method for viewall product 
	public List<Laptop> viewAlllaptop()
	{
		try {
		return ll.findAll();
	}catch (Exception e) {
		return null;
	}
	}
	//Test the updated laptop
	public String updateLaptop(Laptop l){
		try
	{
		for(Laptop l1 : ll.findAll())
		{
			if(l1.getLid() == l.getLid())
			{
				ll.deleteById(l.getLid());
			}
		}
		ll.save(l);
		return "Laptop updated";
	}catch(Exception e) {
		return "something went wrong";
	}
	}
	
	
	//Test the deleted laptop
	public String deleteLaptop(int lid) {
		try {
		for(Laptop l : ll.findAll())
		{
			if(lid == l.getLid())
			{
				ll.deleteById(lid);
				return "Laptop Deleted";
			}
		}
		return "Laptop unavailable";
	}
		catch(Exception e) {
			return "something went wrong";
		}
	}
	
	//Test the check stock
	public int  checkStock( int lid) {
		try {
		Laptop l = ll.findById(lid).orElse(null);
		if(l!=null) {
			return l.getQuantity();
		}
		return -1;
	}
		catch(Exception e) {
			return -1;
		}
	}
	
	//Test the added stock
	public String addStock(int lid, int quantity) {
		try {
		Laptop l = ll.findById(lid).orElse(null);
		if(l!=null) {
			l.setQuantity(quantity + l.getQuantity());
			return "Stock got added successfully...";
		}
		return "laptop unavailable";
	}

		catch(Exception e) {
			return "something went wrong";
		}
	}
}

