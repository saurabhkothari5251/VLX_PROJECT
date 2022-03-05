package com.vlx.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.vlx.entity.User;
import com.vlx.service.AdUserDetails;
import com.vlx.service.BaseService;
import com.vlx.service.MemberService;
import com.vlx.service.UserService;

@Controller
public class BaseController {
	 
	@Autowired
    private UserService userService;

	 @Autowired
	 BaseService baseService;
	 
	   @Autowired
		 MemberService memberService;
	 @GetMapping("/")
	 public String welcome(@AuthenticationPrincipal AdUserDetails userDetails,Model model,HttpSession session) {

		 Authentication userdetails = SecurityContextHolder.getContext().getAuthentication();
		 String username = userdetails.getName();
		    User loggedInUser = userService.findByUsername(username);
		    model.addAttribute("user", loggedInUser);
			    if (loggedInUser == null) {
			    	return "redirect:/home";
			    	} 
			    else {  
			    	baseService.addUserInSession(loggedInUser, session);
			    }
			        
	    return "home";
	}
	 
	 @GetMapping({"/home"})
	 public String session(@AuthenticationPrincipal AdUserDetails userDetails,Model model,HttpSession session) {
		  
				 return "home";
		   }
	
	
}
