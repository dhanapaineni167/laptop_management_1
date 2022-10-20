package com.sboot.laptopManagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sboot.laptopManagement.entity.Purchase;

public interface PurchaseDao extends JpaRepository<Purchase,Integer>{

}
