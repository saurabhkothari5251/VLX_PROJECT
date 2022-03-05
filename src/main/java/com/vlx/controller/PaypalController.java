package com.vlx.controller;

import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import com.vlx.entity.Order;
import com.vlx.service.PaypalService;

@Controller
public class PaypalController {

	@Autowired
	PaypalService service;

	public static final String SUCCESS_URL = "pay/success";
	public static final String CANCEL_URL = "pay/cancel";

	private final Logger log = LoggerFactory.getLogger(this.getClass());
	@GetMapping("/payment")
	public String home() {
		return "payment";
	}

	@PostMapping("/pay")
	public String payment(@ModelAttribute("order") Order order) {
		try {
			System.out.println("Inside try block");
			System.out.println("order."+order.getMethod()+order.getDescription());
			Payment payment = service.createPayment(order.getPrice(), order.getCurrency(), order.getMethod(),
					order.getIntent(), order.getDescription(), "http://localhost:8080/" + CANCEL_URL,
					"http://localhost:8080/" + SUCCESS_URL);
			
			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					System.out.println(link.getRel());
					return "redirect:"+link.getHref();
				}
			}
			
		} catch (PayPalRESTException e) {
		
			System.out.println("in catch block of paypal");
			e.printStackTrace();
		}
		return "redirect:/";
	}
	
	 @GetMapping(value = CANCEL_URL)
	    public String cancelPay() {
	        return "cancel";
	    }

	    @GetMapping(value = SUCCESS_URL)
	    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,HttpSession session) {
	        try {
	            Payment payment = service.executePayment(paymentId, payerId);
	            
	            
	            if (payment.getState().equals("approved")) {
	                return "redirect:/paymentsuccess";
	            }
	        } catch (PayPalRESTException e) {
	         log.info(e.getMessage());
	        }
	        return "redirect:/";
	    }

}
