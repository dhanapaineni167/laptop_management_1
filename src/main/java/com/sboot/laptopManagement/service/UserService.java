package com.sboot.laptopManagement.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sboot.laptopManagement.dao.LaptopDao;
import com.sboot.laptopManagement.dao.PurchaseDao;
import com.sboot.laptopManagement.dao.UserDao;
import com.sboot.laptopManagement.entity.Laptop;
import com.sboot.laptopManagement.entity.Purchase;
import com.sboot.laptopManagement.entity.User;
@Service
public class UserService {
	@Autowired
	UserDao udao;
	
	@Autowired
	LaptopDao ldao;
	
	@Autowired
	PurchaseDao pdao;

	//Test the registered user
	public String registerUser(User u1) {
		try {

		udao.save(u1);
		return "User registration got successful";
	}
		catch(Exception e) {
			return "something went wrong";
		}
	}

	//Test the view user
	public User viewUser(int uId) {
		try {
		for (User u : udao.findAll()) {
			if (u.getUserId() == uId) {
				return u;
			}
		}
		return null;

	}

		catch(Exception e) {
			return null;
		}
	}

	// user login details
	public boolean checkUserLogin(int uid, String password) {
		try {
		User u = udao.findById(uid).orElse(null);
		if(u != null) {
			return password.equals(u.getPassword());
		}

	}

		catch(Exception e) {
			//return false;
		}
		return false;
	}

	//Test the users purchase invoice data
	public List<Purchase> getinvoice(int uid) {
		try {
	ArrayList<Purchase> plist = new ArrayList<Purchase>();
	if(uid==1234) {
		return pdao.findAll();
	}
		for(Purchase p : pdao.findAll()) {
			if(p.getUid()==uid) {
				plist.add(p);
			
			}
		}
		return plist;
	}

		catch(Exception e) {
			return null;
		}
	}
		
	// users purchased data
	public String purchaseLaptop(int lid, int uid) {
		try {
		Laptop l = ldao.findById(lid).orElse(null);
		User u = udao.findById(uid).orElse(null);
		if (l != null && u != null ) {
			if( l.getQuantity()>0) {
				pdao.save(new Purchase(lid, uid, (l.getLcost() + 500)));
				ldao.purchase(lid);
				return "Purchase Completed";
			}
			else
			{
				ldao.increaseStock(lid);
				return "Try after sometime...";
			}
		}
		return "Invalid Input";
	}
		catch(Exception e) {
			return "something went wrong";
		}
	}
	//  view purchase list
	public List<Laptop> viewPurchaseList() {
		try {
		return ldao.findAll();
	}

		catch(Exception e) {
			return null;
		}
	}
	//Test the users get purchased data
	public Purchase getPurchseData(int pid) {
		try {
		return pdao.findById(pid).orElse(null);
	}

		catch(Exception e) {
			return null;
		}
	}
}
