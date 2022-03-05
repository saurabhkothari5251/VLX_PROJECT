package com.vlx.service;



import java.text.ParseException;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vlx.entity.Member;
import com.vlx.repository.MemberRepository;

@Service
public class MemberService {
	@Autowired
    MemberRepository memberRepository;
	
	LocalDate toDate;

	
	 public void save(Member member) {
		 
			memberRepository.save(member);
	    }
	 
	 public boolean check(Long uid) {
		 
			
			return memberRepository.existsByUserId(uid);

	 }
	 
	public Member getMember(Long uid) {
		 return memberRepository.findByUserId(uid);

	}
	
	public LocalDate calDate(LocalDate oldDate, int days) throws ParseException {
		
		
		return oldDate.plusDays(days);
		
	}
	public void checkType(Member paymentform, String membershipType ) throws ParseException {
			
		LocalDate localDate = LocalDate.now();
		  
	      paymentform.setType(membershipType);   
		  paymentform.setFromDate(localDate);

		  if (membershipType.equals("Basic")) {
	
					toDate = calDate(localDate, 30);
					paymentform.setToDate(toDate);
					
				
				}
				else if (membershipType.equals("Standard")) {
					
					toDate = calDate(localDate, 60);
					paymentform.setToDate(toDate);
					
				
				}
				else if (membershipType.equals("Gold")) {
				
					toDate =calDate(localDate, 180);
					paymentform.setToDate(toDate);
					
				
					}
				else  {
				
						toDate = calDate(localDate, 365);
						paymentform.setToDate(toDate);
						
				
				}
	}
}
