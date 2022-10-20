package com.sboot.laptopManagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sboot.laptopManagement.entity.User;

public interface UserDao extends JpaRepository<User, Integer>{

}
