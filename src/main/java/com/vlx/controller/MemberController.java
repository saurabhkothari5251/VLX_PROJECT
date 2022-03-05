package com.vlx.controller;


import java.text.ParseException;


import java.time.LocalDate;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vlx.entity.Amount;
import com.vlx.entity.Member;
import com.vlx.entity.User;
import com.vlx.service.MemberService;
import com.vlx.service.PriceService;
import com.vlx.vhelper.MemberVhelper;
import com.vlx.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	PriceService priceservice;
    LocalDate toDate;
	String membershipType="";
	
	 @GetMapping("/membership")
	    public String membership(Model model) {
	        model.addAttribute("memberForm", new Member());

	        return "membership";
	    }


	  @PostMapping("/membership")
	    public String membership(@ModelAttribute("memberForm") MemberVo membervo, HttpSession session, @RequestParam("type") String type,Model model) throws ParseException {
		
		membershipType= type;
		Amount price = priceservice.showPrice(membershipType);
		  
		
			 model.addAttribute("price", price.getPrice());
		        return "payment";
		    }
	  
	  @GetMapping("/paymentsuccess")
	    public String payment(Model model) {
	        model.addAttribute("paymentform", new Member());

	        return "success";
	    }
	  @PostMapping("/paymentsuccess")
	  public String paymentSuccess(@ModelAttribute("paymentform") MemberVo membervo,HttpSession session) throws ParseException {
		  
		  Member member = MemberVhelper.getInstance().parseMemberVOtoMemberEntity(membervo);
		  memberService.checkType(member, membershipType);

			  User user = (User) session.getAttribute("user");
			  member.setUser(user);
			  memberService.save(member);
	
			  return "redirect:/";
	  }
	 
	  @GetMapping("/check")
	    public String details(HttpSession session) {
		  
				Long uid =  (Long)session.getAttribute("userId");

				boolean service=  memberService.check(uid);
				Member member =   memberService.getMember(uid);
			
				if(service==true) {
					session.setAttribute("ToDate", member.getToDate());
					session.setAttribute("MembershipType", member.getType());
				return "membershipPlan";
				}
		        return "redirect:/membership";
	      
	    }
	
	  }
	  
	
	
	

