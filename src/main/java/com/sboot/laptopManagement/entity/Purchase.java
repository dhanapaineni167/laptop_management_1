package com.sboot.laptopManagement.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


//This class holds all the features of purchase details

@Entity
public class Purchase {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	private int lid;
	private int uid;
	private double pcost;
	public Purchase() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Purchase(int lid, int uid, double pcost) {
		super();
		
		this.lid = lid;
		this.uid = uid;
		this.pcost = pcost;
		
	}
	public int getPid() {
		return pid;
	}
	public int getLid() {
		return lid;
	}
	public int getUid() {
		return uid;
	}
	public double getPcost() {
		return pcost;
	}
	public void setPcost(double pcost) {
		this.pcost = pcost;
	}
	@Override
	public String toString() {
		return "Purchase [pid=" + pid + ", lid=" + lid + ", uid=" + uid + ", pcost=" + pcost + "]";
	}
	

	
}
