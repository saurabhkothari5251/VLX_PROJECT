package com.vlx.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vlx.controller.UserController;
import com.vlx.entity.User;

@Service
public class BaseService {
	@Autowired
	UserController userController;
	 public void addUserInSession(User u, HttpSession session) {
	        session.setAttribute("user", u);
	        session.setAttribute("name", u.getName());
	        session.setAttribute("username",u.getUsername());
	        session.setAttribute("contact", u.getMobileNumber());
	        session.setAttribute("email", u.getEmailId());
	        session.setAttribute("userId", u.getId());
	        session.setAttribute("role", userController.getRole());
	    }
}
