package com.sboot.laptopManagement.dao;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.sboot.laptopManagement.entity.Laptop;

@Transactional
public interface LaptopDao extends JpaRepository<Laptop,Integer>{
	
	@Modifying
	@Query("update Laptop l set l.quantity = (l.quantity + 10) where l.lid = ?1")
	void increaseStock(int lid);
	
	@Modifying
	@Query("update Laptop l set l.quantity = (l.quantity - 1) where l.lid = ?1")
	void purchase(int lid);
	
}
