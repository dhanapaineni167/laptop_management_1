package com.sboot.laptopManagement.entity;

import javax.persistence.Entity;
import javax.persistence.Id;


//This class holds all the features of laptop details

@Entity
public class Laptop {
	@Id
      private int lid;
      private String lname;
      private String lcolor;
      private double lcost;
      private int quantity;
	public Laptop() {
		super();
		
	}
	public Laptop(int lid, String lname, String lcolor, double lcost) {
		super();
		this.lid = lid;
		this.lname = lname;
		this.lcolor = lcolor;
		this.lcost = lcost;
		
	}
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getLcolor() {
		return lcolor;
	}
	public void setLcolor(String lcolor) {
		this.lcolor = lcolor;
	}
	public double getLcost() {
		return lcost;
	}
	public void setLcost(double lcost) {
		this.lcost = lcost;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Laptop [lid=" + lid + ", lname=" + lname + ", lcolor=" + lcolor + ", lcost=" + lcost + ", quantity="
				+ quantity + "]";
	}
	
      
      
}
